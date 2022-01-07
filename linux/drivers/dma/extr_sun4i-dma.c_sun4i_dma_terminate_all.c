
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct sun4i_dma_vchan {TYPE_1__ vc; struct sun4i_dma_pchan* pchan; int * processing; } ;
struct sun4i_dma_pchan {scalar_t__ base; scalar_t__ is_dedicated; } ;
struct sun4i_dma_dev {int dummy; } ;
struct dma_chan {int device; } ;


 int LIST_HEAD (int ) ;
 scalar_t__ SUN4I_DDMA_CFG_REG ;
 scalar_t__ SUN4I_NDMA_CFG_REG ;
 int head ;
 int release_pchan (struct sun4i_dma_dev*,struct sun4i_dma_pchan*) ;
 int set_pchan_interrupt (struct sun4i_dma_dev*,struct sun4i_dma_pchan*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct sun4i_dma_dev* to_sun4i_dma_dev (int ) ;
 struct sun4i_dma_vchan* to_sun4i_dma_vchan (struct dma_chan*) ;
 int vchan_dma_desc_free_list (TYPE_1__*,int *) ;
 int vchan_get_all_descriptors (TYPE_1__*,int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int sun4i_dma_terminate_all(struct dma_chan *chan)
{
 struct sun4i_dma_dev *priv = to_sun4i_dma_dev(chan->device);
 struct sun4i_dma_vchan *vchan = to_sun4i_dma_vchan(chan);
 struct sun4i_dma_pchan *pchan = vchan->pchan;
 LIST_HEAD(head);
 unsigned long flags;

 spin_lock_irqsave(&vchan->vc.lock, flags);
 vchan_get_all_descriptors(&vchan->vc, &head);
 spin_unlock_irqrestore(&vchan->vc.lock, flags);





 if (pchan) {
  if (pchan->is_dedicated)
   writel(0, pchan->base + SUN4I_DDMA_CFG_REG);
  else
   writel(0, pchan->base + SUN4I_NDMA_CFG_REG);
  set_pchan_interrupt(priv, pchan, 0, 0);
  release_pchan(priv, pchan);
 }

 spin_lock_irqsave(&vchan->vc.lock, flags);
 vchan_dma_desc_free_list(&vchan->vc, &head);

 vchan->processing = ((void*)0);
 vchan->pchan = ((void*)0);
 spin_unlock_irqrestore(&vchan->vc.lock, flags);

 return 0;
}
