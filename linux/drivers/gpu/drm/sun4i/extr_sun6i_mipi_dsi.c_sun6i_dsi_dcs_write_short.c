
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_dsi {int regs; } ;
struct mipi_dsi_msg {int tx_len; } ;


 int DSI_START_LPTX ;
 int SUN6I_DSI_CMD_CTL_REG ;
 int SUN6I_DSI_CMD_TX_REG (int ) ;
 int regmap_write (int ,int ,int ) ;
 int regmap_write_bits (int ,int ,int,int) ;
 int sun6i_dsi_dcs_build_pkt_hdr (struct sun6i_dsi*,struct mipi_dsi_msg const*) ;
 int sun6i_dsi_start (struct sun6i_dsi*,int ) ;

__attribute__((used)) static int sun6i_dsi_dcs_write_short(struct sun6i_dsi *dsi,
         const struct mipi_dsi_msg *msg)
{
 regmap_write(dsi->regs, SUN6I_DSI_CMD_TX_REG(0),
       sun6i_dsi_dcs_build_pkt_hdr(dsi, msg));
 regmap_write_bits(dsi->regs, SUN6I_DSI_CMD_CTL_REG,
     0xff, (4 - 1));

 sun6i_dsi_start(dsi, DSI_START_LPTX);

 return msg->tx_len;
}
