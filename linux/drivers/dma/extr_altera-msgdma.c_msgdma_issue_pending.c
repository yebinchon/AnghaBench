
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgdma_device {int lock; } ;
struct dma_chan {int dummy; } ;


 int msgdma_start_transfer (struct msgdma_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct msgdma_device* to_mdev (struct dma_chan*) ;

__attribute__((used)) static void msgdma_issue_pending(struct dma_chan *chan)
{
 struct msgdma_device *mdev = to_mdev(chan);
 unsigned long flags;

 spin_lock_irqsave(&mdev->lock, flags);
 msgdma_start_transfer(mdev);
 spin_unlock_irqrestore(&mdev->lock, flags);
}
