
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct owl_dma_vchan {int dummy; } ;
struct owl_dma_pchan {int lock; struct owl_dma_vchan* vchan; } ;
struct owl_dma {int nr_pchans; struct owl_dma_pchan* pchans; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct owl_dma_pchan *owl_dma_get_pchan(struct owl_dma *od,
            struct owl_dma_vchan *vchan)
{
 struct owl_dma_pchan *pchan = ((void*)0);
 unsigned long flags;
 int i;

 for (i = 0; i < od->nr_pchans; i++) {
  pchan = &od->pchans[i];

  spin_lock_irqsave(&pchan->lock, flags);
  if (!pchan->vchan) {
   pchan->vchan = vchan;
   spin_unlock_irqrestore(&pchan->lock, flags);
   break;
  }

  spin_unlock_irqrestore(&pchan->lock, flags);
 }

 return pchan;
}
