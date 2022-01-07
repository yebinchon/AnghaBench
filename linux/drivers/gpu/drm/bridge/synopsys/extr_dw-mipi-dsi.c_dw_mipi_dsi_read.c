
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mipi_dsi_msg {int rx_len; int* rx_buf; } ;
struct dw_mipi_dsi {int dev; scalar_t__ base; } ;


 int CMD_PKT_STATUS_TIMEOUT_US ;
 scalar_t__ DSI_CMD_PKT_STATUS ;
 int DSI_GEN_PLD_DATA ;
 int GEN_PLD_R_EMPTY ;
 int GEN_RD_CMD_BUSY ;
 int dev_err (int ,char*) ;
 int dsi_read (struct dw_mipi_dsi*,int ) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int ) ;

__attribute__((used)) static int dw_mipi_dsi_read(struct dw_mipi_dsi *dsi,
       const struct mipi_dsi_msg *msg)
{
 int i, j, ret, len = msg->rx_len;
 u8 *buf = msg->rx_buf;
 u32 val;


 ret = readl_poll_timeout(dsi->base + DSI_CMD_PKT_STATUS,
     val, !(val & GEN_RD_CMD_BUSY),
     1000, CMD_PKT_STATUS_TIMEOUT_US);
 if (ret) {
  dev_err(dsi->dev, "Timeout during read operation\n");
  return ret;
 }

 for (i = 0; i < len; i += 4) {

  ret = readl_poll_timeout(dsi->base + DSI_CMD_PKT_STATUS,
      val, !(val & GEN_PLD_R_EMPTY),
      1000, CMD_PKT_STATUS_TIMEOUT_US);
  if (ret) {
   dev_err(dsi->dev, "Read payload FIFO is empty\n");
   return ret;
  }

  val = dsi_read(dsi, DSI_GEN_PLD_DATA);
  for (j = 0; j < 4 && j + i < len; j++)
   buf[i + j] = val >> (8 * j);
 }

 return ret;
}
