
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_mipi_dsi {int dev; scalar_t__ base; } ;


 int CMD_PKT_STATUS_TIMEOUT_US ;
 scalar_t__ DSI_CMD_PKT_STATUS ;
 int DSI_GEN_HDR ;
 int GEN_CMD_EMPTY ;
 int GEN_CMD_FULL ;
 int GEN_PLD_W_EMPTY ;
 int dev_err (int ,char*) ;
 int dsi_write (struct dw_mipi_dsi*,int ,int) ;
 int readl_poll_timeout (scalar_t__,int,int,int,int ) ;

__attribute__((used)) static int dw_mipi_dsi_gen_pkt_hdr_write(struct dw_mipi_dsi *dsi, u32 hdr_val)
{
 int ret;
 u32 val, mask;

 ret = readl_poll_timeout(dsi->base + DSI_CMD_PKT_STATUS,
     val, !(val & GEN_CMD_FULL), 1000,
     CMD_PKT_STATUS_TIMEOUT_US);
 if (ret) {
  dev_err(dsi->dev, "failed to get available command FIFO\n");
  return ret;
 }

 dsi_write(dsi, DSI_GEN_HDR, hdr_val);

 mask = GEN_CMD_EMPTY | GEN_PLD_W_EMPTY;
 ret = readl_poll_timeout(dsi->base + DSI_CMD_PKT_STATUS,
     val, (val & mask) == mask,
     1000, CMD_PKT_STATUS_TIMEOUT_US);
 if (ret) {
  dev_err(dsi->dev, "failed to write command FIFO\n");
  return ret;
 }

 return 0;
}
