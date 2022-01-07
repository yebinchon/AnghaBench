
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dw_i3c_xfer {int node; } ;
struct TYPE_2__ {struct dw_i3c_xfer* cur; } ;
struct dw_i3c_master {scalar_t__ regs; TYPE_1__ xferqueue; } ;


 scalar_t__ RESET_CTRL ;
 int RESET_CTRL_CMD_QUEUE ;
 int RESET_CTRL_RESP_QUEUE ;
 int RESET_CTRL_RX_FIFO ;
 int RESET_CTRL_TX_FIFO ;
 int list_del_init (int *) ;
 int readl_poll_timeout_atomic (scalar_t__,int ,int,int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void dw_i3c_master_dequeue_xfer_locked(struct dw_i3c_master *master,
           struct dw_i3c_xfer *xfer)
{
 if (master->xferqueue.cur == xfer) {
  u32 status;

  master->xferqueue.cur = ((void*)0);

  writel(RESET_CTRL_RX_FIFO | RESET_CTRL_TX_FIFO |
         RESET_CTRL_RESP_QUEUE | RESET_CTRL_CMD_QUEUE,
         master->regs + RESET_CTRL);

  readl_poll_timeout_atomic(master->regs + RESET_CTRL, status,
       !status, 10, 1000000);
 } else {
  list_del_init(&xfer->node);
 }
}
