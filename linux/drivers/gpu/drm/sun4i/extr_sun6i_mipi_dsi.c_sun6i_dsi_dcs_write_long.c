
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sun6i_dsi {int regs; } ;
struct mipi_dsi_msg {int tx_len; int * tx_buf; } ;
typedef int crc ;


 int DSI_START_LPTX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SUN6I_DSI_CMD_CTL_REG ;
 int SUN6I_DSI_CMD_TX_REG (int) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int regmap_bulk_write (int ,int ,int *,int) ;
 int regmap_write (int ,int ,int) ;
 int sun6i_dsi_crc_compute (int *,int) ;
 int sun6i_dsi_dcs_build_pkt_hdr (struct sun6i_dsi*,struct mipi_dsi_msg const*) ;
 int sun6i_dsi_inst_abort (struct sun6i_dsi*) ;
 int sun6i_dsi_inst_wait_for_completion (struct sun6i_dsi*) ;
 int sun6i_dsi_start (struct sun6i_dsi*,int ) ;

__attribute__((used)) static int sun6i_dsi_dcs_write_long(struct sun6i_dsi *dsi,
        const struct mipi_dsi_msg *msg)
{
 int ret, len = 0;
 u8 *bounce;
 u16 crc;

 regmap_write(dsi->regs, SUN6I_DSI_CMD_TX_REG(0),
       sun6i_dsi_dcs_build_pkt_hdr(dsi, msg));

 bounce = kzalloc(msg->tx_len + sizeof(crc), GFP_KERNEL);
 if (!bounce)
  return -ENOMEM;

 memcpy(bounce, msg->tx_buf, msg->tx_len);
 len += msg->tx_len;

 crc = sun6i_dsi_crc_compute(bounce, msg->tx_len);
 memcpy((u8 *)bounce + msg->tx_len, &crc, sizeof(crc));
 len += sizeof(crc);

 regmap_bulk_write(dsi->regs, SUN6I_DSI_CMD_TX_REG(1), bounce, len);
 regmap_write(dsi->regs, SUN6I_DSI_CMD_CTL_REG, len + 4 - 1);
 kfree(bounce);

 sun6i_dsi_start(dsi, DSI_START_LPTX);

 ret = sun6i_dsi_inst_wait_for_completion(dsi);
 if (ret < 0) {
  sun6i_dsi_inst_abort(dsi);
  return ret;
 }






 return msg->tx_len;
}
