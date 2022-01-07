
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cdns_i3c_xfer {int node; } ;
struct TYPE_2__ {int lock; struct cdns_i3c_xfer* cur; } ;
struct cdns_i3c_master {TYPE_1__ xferqueue; scalar_t__ regs; } ;


 scalar_t__ CTRL ;
 int CTRL_DEV_EN ;
 int FLUSH_CMD_FIFO ;
 int FLUSH_CMD_RESP ;
 scalar_t__ FLUSH_CTRL ;
 int FLUSH_RX_FIFO ;
 int FLUSH_TX_FIFO ;
 scalar_t__ MST_IDR ;
 int MST_INT_CMDD_EMP ;
 scalar_t__ MST_STATUS0 ;
 int MST_STATUS0_IDLE ;
 int list_del_init (int *) ;
 int readl (scalar_t__) ;
 int readl_poll_timeout_atomic (scalar_t__,int,int,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cdns_i3c_master_unqueue_xfer(struct cdns_i3c_master *master,
      struct cdns_i3c_xfer *xfer)
{
 unsigned long flags;

 spin_lock_irqsave(&master->xferqueue.lock, flags);
 if (master->xferqueue.cur == xfer) {
  u32 status;

  writel(readl(master->regs + CTRL) & ~CTRL_DEV_EN,
         master->regs + CTRL);
  readl_poll_timeout_atomic(master->regs + MST_STATUS0, status,
       status & MST_STATUS0_IDLE, 10,
       1000000);
  master->xferqueue.cur = ((void*)0);
  writel(FLUSH_RX_FIFO | FLUSH_TX_FIFO | FLUSH_CMD_FIFO |
         FLUSH_CMD_RESP,
         master->regs + FLUSH_CTRL);
  writel(MST_INT_CMDD_EMP, master->regs + MST_IDR);
  writel(readl(master->regs + CTRL) | CTRL_DEV_EN,
         master->regs + CTRL);
 } else {
  list_del_init(&xfer->node);
 }
 spin_unlock_irqrestore(&master->xferqueue.lock, flags);
}
