
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct s3c24xx_dma_chan {scalar_t__ state; TYPE_1__ vc; int phy; } ;
struct dma_chan {int dummy; } ;


 scalar_t__ S3C24XX_DMA_CHAN_WAITING ;
 int s3c24xx_dma_phy_alloc_and_start (struct s3c24xx_dma_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct s3c24xx_dma_chan* to_s3c24xx_dma_chan (struct dma_chan*) ;
 scalar_t__ vchan_issue_pending (TYPE_1__*) ;

__attribute__((used)) static void s3c24xx_dma_issue_pending(struct dma_chan *chan)
{
 struct s3c24xx_dma_chan *s3cchan = to_s3c24xx_dma_chan(chan);
 unsigned long flags;

 spin_lock_irqsave(&s3cchan->vc.lock, flags);
 if (vchan_issue_pending(&s3cchan->vc)) {
  if (!s3cchan->phy && s3cchan->state != S3C24XX_DMA_CHAN_WAITING)
   s3c24xx_dma_phy_alloc_and_start(s3cchan);
 }
 spin_unlock_irqrestore(&s3cchan->vc.lock, flags);
}
