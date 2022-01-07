
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msgdma_device {int idle; scalar_t__ csr; int irq_tasklet; int lock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ MSGDMA_CSR_STATUS ;
 int MSGDMA_CSR_STAT_BUSY ;
 int MSGDMA_CSR_STAT_IRQ ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int msgdma_start_transfer (struct msgdma_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t msgdma_irq_handler(int irq, void *data)
{
 struct msgdma_device *mdev = data;
 u32 status;

 status = ioread32(mdev->csr + MSGDMA_CSR_STATUS);
 if ((status & MSGDMA_CSR_STAT_BUSY) == 0) {

  spin_lock(&mdev->lock);
  mdev->idle = 1;
  msgdma_start_transfer(mdev);
  spin_unlock(&mdev->lock);
 }

 tasklet_schedule(&mdev->irq_tasklet);


 iowrite32(MSGDMA_CSR_STAT_IRQ, mdev->csr + MSGDMA_CSR_STATUS);

 return IRQ_HANDLED;
}
