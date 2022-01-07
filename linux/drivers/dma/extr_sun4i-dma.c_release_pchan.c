
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_dma_pchan {int * vchan; } ;
struct sun4i_dma_dev {int lock; int pchans_used; struct sun4i_dma_pchan* pchans; } ;


 int clear_bit (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void release_pchan(struct sun4i_dma_dev *priv,
     struct sun4i_dma_pchan *pchan)
{
 unsigned long flags;
 int nr = pchan - priv->pchans;

 spin_lock_irqsave(&priv->lock, flags);

 pchan->vchan = ((void*)0);
 clear_bit(nr, priv->pchans_used);

 spin_unlock_irqrestore(&priv->lock, flags);
}
