
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_dsi {int regs; } ;
struct mipi_dsi_msg {int type; int rx_len; } ;
struct mipi_dsi_host {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;





 int SUN6I_DSI_CMD_CTL_REG ;
 int SUN6I_DSI_CMD_CTL_RX_FLAG ;
 int SUN6I_DSI_CMD_CTL_RX_OVERFLOW ;
 int SUN6I_DSI_CMD_CTL_TX_FLAG ;
 struct sun6i_dsi* host_to_sun6i_dsi (struct mipi_dsi_host*) ;
 int regmap_write (int ,int ,int) ;
 int sun6i_dsi_dcs_read (struct sun6i_dsi*,struct mipi_dsi_msg const*) ;
 int sun6i_dsi_dcs_write_long (struct sun6i_dsi*,struct mipi_dsi_msg const*) ;
 int sun6i_dsi_dcs_write_short (struct sun6i_dsi*,struct mipi_dsi_msg const*) ;
 int sun6i_dsi_inst_abort (struct sun6i_dsi*) ;
 int sun6i_dsi_inst_wait_for_completion (struct sun6i_dsi*) ;

__attribute__((used)) static ssize_t sun6i_dsi_transfer(struct mipi_dsi_host *host,
      const struct mipi_dsi_msg *msg)
{
 struct sun6i_dsi *dsi = host_to_sun6i_dsi(host);
 int ret;

 ret = sun6i_dsi_inst_wait_for_completion(dsi);
 if (ret < 0)
  sun6i_dsi_inst_abort(dsi);

 regmap_write(dsi->regs, SUN6I_DSI_CMD_CTL_REG,
       SUN6I_DSI_CMD_CTL_RX_OVERFLOW |
       SUN6I_DSI_CMD_CTL_RX_FLAG |
       SUN6I_DSI_CMD_CTL_TX_FLAG);

 switch (msg->type) {
 case 130:
 case 129:
 case 128:
  ret = sun6i_dsi_dcs_write_short(dsi, msg);
  break;

 case 132:
  ret = sun6i_dsi_dcs_write_long(dsi, msg);
  break;

 case 131:
  if (msg->rx_len == 1) {
   ret = sun6i_dsi_dcs_read(dsi, msg);
   break;
  }


 default:
  ret = -EINVAL;
 }

 return ret;
}
