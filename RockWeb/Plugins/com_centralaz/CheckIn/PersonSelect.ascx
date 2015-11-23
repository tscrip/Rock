﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="PersonSelect.ascx.cs" Inherits="RockWeb.Plugins.com_centralaz.CheckIn.PersonSelect" %>
<asp:UpdatePanel ID="upContent" runat="server">
<ContentTemplate>

    <Rock:ModalAlert ID="maWarning" runat="server" />


    <div class="checkin-header">
        <h1><asp:Literal ID="lFamilyName" runat="server"></asp:Literal></h1>
    </div>
                
    <div class="checkin-body">
        
        <div class="checkin-scroll-panel">
            <div class="scroller">

                <div class="control-group checkin-body-container">
                    <label class="control-label">Select Person</label>
                    <div class="controls">
                        <asp:HiddenField ID="hfSelectedPeopleIds" runat="server" /><%--OnItemCommand="rSelection_ItemCommand" --%>
                        <asp:Repeater ID="rSelection" runat="server" OnItemDataBound="rSelection_ItemDataBound">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbSelect" runat="server" Text='<%# Container.DataItem.ToString() %>' CommandArgument='<%# Eval("Person.Id") %>' CssClass="js-dataButton btn btn-default btn-large btn-block btn-checkin-select" DataLoadingText="Loading..." />
                                <input type="hidden" id="ihPersonId" runat="server" Value='<%# Eval("Person.Id") %>' />
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>

            </div>
        </div>

    </div>
        
   
    <div class="checkin-footer">   
        <div class="checkin-actions">
            <asp:LinkButton CssClass="btn btn-default" ID="lbBack" runat="server" OnClick="lbBack_Click" Text="Back" />
            <asp:LinkButton CssClass="btn btn-default" ID="lbCancel" runat="server" OnClick="lbCancel_Click" Text="Cancel" />
            <asp:LinkButton CssClass="btn btn-default pull-right disabled" ID="lbNext" runat="server" OnClick="lbNext_Click" Text="Next" />
        </div>
    </div>

</ContentTemplate>
</asp:UpdatePanel>
