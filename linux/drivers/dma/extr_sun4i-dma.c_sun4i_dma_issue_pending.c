
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct sun4i_dma_vchan {TYPE_1__ vc; } ;
struct sun4i_dma_dev {int dummy; } ;
struct dma_chan {int device; } ;


 int __execute_vchan_pending (struct sun4i_dma_dev*,struct sun4i_dma_vchan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct sun4i_dma_dev* to_sun4i_dma_dev (int ) ;
 struct sun4i_dma_vchan* to_sun4i_dma_vchan (struct dma_chan*) ;
 scalar_t__ vchan_issue_pending (TYPE_1__*) ;

__attribute__((used)) static void sun4i_dma_issue_pending(struct dma_chan *chan)
{
 struct sun4i_dma_dev *priv = to_sun4i_dma_dev(chan->device);
 struct sun4i_dma_vchan *vchan = to_sun4i_dma_vchan(chan);
 unsigned long flags;

 spin_lock_irqsave(&vchan->vc.lock, flags);





 if (vchan_issue_pending(&vchan->vc))
  __execute_vchan_pending(priv, vchan);

 spin_unlock_irqrestore(&vchan->vc.lock, flags);
}
