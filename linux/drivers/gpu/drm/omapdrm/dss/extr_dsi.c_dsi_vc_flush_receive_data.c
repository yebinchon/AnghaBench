
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct dsi_data {int dummy; } ;


 int DSI_VC_CTRL (int) ;
 int DSI_VC_SHORT_PACKET_HEADER (int) ;
 int DSSERR (char*,scalar_t__) ;
 scalar_t__ FLD_GET (scalar_t__,int,int) ;
 scalar_t__ MIPI_DSI_RX_ACKNOWLEDGE_AND_ERROR_REPORT ;
 scalar_t__ MIPI_DSI_RX_DCS_LONG_READ_RESPONSE ;
 scalar_t__ MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_1BYTE ;
 scalar_t__ MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_2BYTE ;
 scalar_t__ REG_GET (struct dsi_data*,int ,int,int) ;
 scalar_t__ dsi_read_reg (struct dsi_data*,int ) ;
 int dsi_show_rx_ack_with_err (scalar_t__) ;
 int dsi_vc_flush_long_data (struct dsi_data*,int) ;

__attribute__((used)) static u16 dsi_vc_flush_receive_data(struct dsi_data *dsi, int channel)
{

 while (REG_GET(dsi, DSI_VC_CTRL(channel), 20, 20)) {
  u32 val;
  u8 dt;
  val = dsi_read_reg(dsi, DSI_VC_SHORT_PACKET_HEADER(channel));
  DSSERR("\trawval %#08x\n", val);
  dt = FLD_GET(val, 5, 0);
  if (dt == MIPI_DSI_RX_ACKNOWLEDGE_AND_ERROR_REPORT) {
   u16 err = FLD_GET(val, 23, 8);
   dsi_show_rx_ack_with_err(err);
  } else if (dt == MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_1BYTE) {
   DSSERR("\tDCS short response, 1 byte: %#x\n",
     FLD_GET(val, 23, 8));
  } else if (dt == MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_2BYTE) {
   DSSERR("\tDCS short response, 2 byte: %#x\n",
     FLD_GET(val, 23, 8));
  } else if (dt == MIPI_DSI_RX_DCS_LONG_READ_RESPONSE) {
   DSSERR("\tDCS long response, len %d\n",
     FLD_GET(val, 23, 8));
   dsi_vc_flush_long_data(dsi, channel);
  } else {
   DSSERR("\tunknown datatype 0x%02x\n", dt);
  }
 }
 return 0;
}
