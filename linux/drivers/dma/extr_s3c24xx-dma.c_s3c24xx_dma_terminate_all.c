
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct s3c24xx_dma_engine {TYPE_1__* pdev; } ;
struct TYPE_6__ {int lock; } ;
struct s3c24xx_dma_chan {TYPE_3__ vc; TYPE_2__* at; scalar_t__ phy; int state; int id; struct s3c24xx_dma_engine* host; } ;
struct dma_chan {int dummy; } ;
struct TYPE_5__ {int vd; } ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 int S3C24XX_DMA_CHAN_IDLE ;
 int dev_err (int *,char*,int ) ;
 int s3c24xx_dma_free_txd_list (struct s3c24xx_dma_engine*,struct s3c24xx_dma_chan*) ;
 int s3c24xx_dma_phy_free (struct s3c24xx_dma_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct s3c24xx_dma_chan* to_s3c24xx_dma_chan (struct dma_chan*) ;
 int vchan_terminate_vdesc (int *) ;

__attribute__((used)) static int s3c24xx_dma_terminate_all(struct dma_chan *chan)
{
 struct s3c24xx_dma_chan *s3cchan = to_s3c24xx_dma_chan(chan);
 struct s3c24xx_dma_engine *s3cdma = s3cchan->host;
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&s3cchan->vc.lock, flags);

 if (!s3cchan->phy && !s3cchan->at) {
  dev_err(&s3cdma->pdev->dev, "trying to terminate already stopped channel %d\n",
   s3cchan->id);
  ret = -EINVAL;
  goto unlock;
 }

 s3cchan->state = S3C24XX_DMA_CHAN_IDLE;


 if (s3cchan->phy)
  s3c24xx_dma_phy_free(s3cchan);


 if (s3cchan->at) {
  vchan_terminate_vdesc(&s3cchan->at->vd);
  s3cchan->at = ((void*)0);
 }


 s3c24xx_dma_free_txd_list(s3cdma, s3cchan);
unlock:
 spin_unlock_irqrestore(&s3cchan->vc.lock, flags);

 return ret;
}
