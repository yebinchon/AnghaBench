
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int lock; } ;
struct dw_i3c_master {TYPE_1__ xferqueue; scalar_t__ regs; } ;
typedef int irqreturn_t ;


 int INTR_ALL ;
 scalar_t__ INTR_STATUS ;
 scalar_t__ INTR_STATUS_EN ;
 int INTR_TRANSFER_ERR_STAT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dw_i3c_master_end_xfer_locked (struct dw_i3c_master*,int) ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t dw_i3c_master_irq_handler(int irq, void *dev_id)
{
 struct dw_i3c_master *master = dev_id;
 u32 status;

 status = readl(master->regs + INTR_STATUS);

 if (!(status & readl(master->regs + INTR_STATUS_EN))) {
  writel(INTR_ALL, master->regs + INTR_STATUS);
  return IRQ_NONE;
 }

 spin_lock(&master->xferqueue.lock);
 dw_i3c_master_end_xfer_locked(master, status);
 if (status & INTR_TRANSFER_ERR_STAT)
  writel(INTR_TRANSFER_ERR_STAT, master->regs + INTR_STATUS);
 spin_unlock(&master->xferqueue.lock);

 return IRQ_HANDLED;
}
