
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_packet {int payload; scalar_t__ payload_length; int header; } ;
struct exynos_dsi_transfer {int result; struct mipi_dsi_packet packet; int completed; int list; scalar_t__ rx_done; scalar_t__ tx_done; } ;
struct exynos_dsi {int dev; int transfer_lock; int transfer_list; } ;


 int DSI_XFER_TIMEOUT_MS ;
 int ETIMEDOUT ;
 int dev_err (int ,char*,int,int ,int,int ) ;
 int exynos_dsi_remove_transfer (struct exynos_dsi*,struct exynos_dsi_transfer*) ;
 int exynos_dsi_transfer_start (struct exynos_dsi*) ;
 int init_completion (int *) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int msecs_to_jiffies (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int exynos_dsi_transfer(struct exynos_dsi *dsi,
     struct exynos_dsi_transfer *xfer)
{
 unsigned long flags;
 bool stopped;

 xfer->tx_done = 0;
 xfer->rx_done = 0;
 xfer->result = -ETIMEDOUT;
 init_completion(&xfer->completed);

 spin_lock_irqsave(&dsi->transfer_lock, flags);

 stopped = list_empty(&dsi->transfer_list);
 list_add_tail(&xfer->list, &dsi->transfer_list);

 spin_unlock_irqrestore(&dsi->transfer_lock, flags);

 if (stopped)
  exynos_dsi_transfer_start(dsi);

 wait_for_completion_timeout(&xfer->completed,
        msecs_to_jiffies(DSI_XFER_TIMEOUT_MS));
 if (xfer->result == -ETIMEDOUT) {
  struct mipi_dsi_packet *pkt = &xfer->packet;
  exynos_dsi_remove_transfer(dsi, xfer);
  dev_err(dsi->dev, "xfer timed out: %*ph %*ph\n", 4, pkt->header,
   (int)pkt->payload_length, pkt->payload);
  return -ETIMEDOUT;
 }


 return xfer->result;
}
