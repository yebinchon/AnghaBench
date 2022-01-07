
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mipi_dsi_msg {int flags; } ;
struct dw_mipi_dsi {int dummy; } ;


 int ACK_RQST_EN ;
 int CMD_MODE_ALL_LP ;
 int DSI_CMD_MODE_CFG ;
 int DSI_LPCLK_CTRL ;
 int MIPI_DSI_MSG_REQ_ACK ;
 int MIPI_DSI_MSG_USE_LPM ;
 int PHY_TXREQUESTCLKHS ;
 int dsi_write (struct dw_mipi_dsi*,int ,int ) ;

__attribute__((used)) static void dw_mipi_message_config(struct dw_mipi_dsi *dsi,
       const struct mipi_dsi_msg *msg)
{
 bool lpm = msg->flags & MIPI_DSI_MSG_USE_LPM;
 u32 val = 0;

 if (msg->flags & MIPI_DSI_MSG_REQ_ACK)
  val |= ACK_RQST_EN;
 if (lpm)
  val |= CMD_MODE_ALL_LP;

 dsi_write(dsi, DSI_LPCLK_CTRL, lpm ? 0 : PHY_TXREQUESTCLKHS);
 dsi_write(dsi, DSI_CMD_MODE_CFG, val);
}
