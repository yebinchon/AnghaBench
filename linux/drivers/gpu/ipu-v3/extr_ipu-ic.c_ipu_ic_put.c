
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_ic_priv {int lock; } ;
struct ipu_ic {int in_use; struct ipu_ic_priv* priv; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ipu_ic_put(struct ipu_ic *ic)
{
 struct ipu_ic_priv *priv = ic->priv;
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);
 ic->in_use = 0;
 spin_unlock_irqrestore(&priv->lock, flags);
}
