
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sun6i_dsi {int regs; } ;
struct mipi_dsi_msg {scalar_t__ rx_buf; } ;


 int DSI_START_LPRX ;
 int EIO ;
 int MIPI_DSI_RX_ACKNOWLEDGE_AND_ERROR_REPORT ;
 int SUN6I_DSI_CMD_CTL_REG ;
 int SUN6I_DSI_CMD_CTL_RX_OVERFLOW ;
 int SUN6I_DSI_CMD_RX_REG (int ) ;
 int SUN6I_DSI_CMD_TX_REG (int ) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;
 int sun6i_dsi_dcs_build_pkt_hdr (struct sun6i_dsi*,struct mipi_dsi_msg const*) ;
 int sun6i_dsi_inst_abort (struct sun6i_dsi*) ;
 int sun6i_dsi_inst_wait_for_completion (struct sun6i_dsi*) ;
 int sun6i_dsi_start (struct sun6i_dsi*,int ) ;

__attribute__((used)) static int sun6i_dsi_dcs_read(struct sun6i_dsi *dsi,
         const struct mipi_dsi_msg *msg)
{
 u32 val;
 int ret;
 u8 byte0;

 regmap_write(dsi->regs, SUN6I_DSI_CMD_TX_REG(0),
       sun6i_dsi_dcs_build_pkt_hdr(dsi, msg));
 regmap_write(dsi->regs, SUN6I_DSI_CMD_CTL_REG,
       (4 - 1));

 sun6i_dsi_start(dsi, DSI_START_LPRX);

 ret = sun6i_dsi_inst_wait_for_completion(dsi);
 if (ret < 0) {
  sun6i_dsi_inst_abort(dsi);
  return ret;
 }






 regmap_read(dsi->regs, SUN6I_DSI_CMD_CTL_REG, &val);
 if (val & SUN6I_DSI_CMD_CTL_RX_OVERFLOW)
  return -EIO;

 regmap_read(dsi->regs, SUN6I_DSI_CMD_RX_REG(0), &val);
 byte0 = val & 0xff;
 if (byte0 == MIPI_DSI_RX_ACKNOWLEDGE_AND_ERROR_REPORT)
  return -EIO;

 ((u8 *)msg->rx_buf)[0] = (val >> 8);

 return 1;
}
