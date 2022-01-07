
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_smfc_priv {int lock; } ;
struct ipu_smfc {int inuse; struct ipu_smfc_priv* priv; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ipu_smfc_put(struct ipu_smfc *smfc)
{
 struct ipu_smfc_priv *priv = smfc->priv;
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);
 smfc->inuse = 0;
 spin_unlock_irqrestore(&priv->lock, flags);
}
