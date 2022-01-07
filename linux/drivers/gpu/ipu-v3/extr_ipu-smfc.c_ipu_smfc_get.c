
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_soc {struct ipu_smfc_priv* smfc_priv; } ;
struct ipu_smfc_priv {int lock; struct ipu_smfc* channel; } ;
struct ipu_smfc {int inuse; } ;


 int EBUSY ;
 int EINVAL ;
 struct ipu_smfc* ERR_PTR (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct ipu_smfc *ipu_smfc_get(struct ipu_soc *ipu, unsigned int chno)
{
 struct ipu_smfc_priv *priv = ipu->smfc_priv;
 struct ipu_smfc *smfc, *ret;
 unsigned long flags;

 if (chno >= 4)
  return ERR_PTR(-EINVAL);

 smfc = &priv->channel[chno];
 ret = smfc;

 spin_lock_irqsave(&priv->lock, flags);

 if (smfc->inuse) {
  ret = ERR_PTR(-EBUSY);
  goto unlock;
 }

 smfc->inuse = 1;
unlock:
 spin_unlock_irqrestore(&priv->lock, flags);
 return ret;
}
