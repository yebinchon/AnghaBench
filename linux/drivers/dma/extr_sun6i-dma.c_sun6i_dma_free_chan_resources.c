
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_vchan {int vc; int node; } ;
struct sun6i_dma_dev {int lock; } ;
struct dma_chan {int device; } ;


 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct sun6i_dma_dev* to_sun6i_dma_dev (int ) ;
 struct sun6i_vchan* to_sun6i_vchan (struct dma_chan*) ;
 int vchan_free_chan_resources (int *) ;

__attribute__((used)) static void sun6i_dma_free_chan_resources(struct dma_chan *chan)
{
 struct sun6i_dma_dev *sdev = to_sun6i_dma_dev(chan->device);
 struct sun6i_vchan *vchan = to_sun6i_vchan(chan);
 unsigned long flags;

 spin_lock_irqsave(&sdev->lock, flags);
 list_del_init(&vchan->node);
 spin_unlock_irqrestore(&sdev->lock, flags);

 vchan_free_chan_resources(&vchan->vc);
}
