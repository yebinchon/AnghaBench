
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_smfc_priv {scalar_t__ use_count; int lock; int ipu; } ;
struct ipu_smfc {struct ipu_smfc_priv* priv; } ;


 int IPU_CONF_SMFC_EN ;
 int ipu_module_disable (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ipu_smfc_disable(struct ipu_smfc *smfc)
{
 struct ipu_smfc_priv *priv = smfc->priv;
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);

 priv->use_count--;

 if (!priv->use_count)
  ipu_module_disable(priv->ipu, IPU_CONF_SMFC_EN);

 if (priv->use_count < 0)
  priv->use_count = 0;

 spin_unlock_irqrestore(&priv->lock, flags);

 return 0;
}
