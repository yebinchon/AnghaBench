
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msgdma_device {int sw_desq; int lock; } ;
struct dma_chan {int dummy; } ;


 int kfree (int ) ;
 int msgdma_free_descriptors (struct msgdma_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct msgdma_device* to_mdev (struct dma_chan*) ;

__attribute__((used)) static void msgdma_free_chan_resources(struct dma_chan *dchan)
{
 struct msgdma_device *mdev = to_mdev(dchan);
 unsigned long flags;

 spin_lock_irqsave(&mdev->lock, flags);
 msgdma_free_descriptors(mdev);
 spin_unlock_irqrestore(&mdev->lock, flags);
 kfree(mdev->sw_desq);
}
