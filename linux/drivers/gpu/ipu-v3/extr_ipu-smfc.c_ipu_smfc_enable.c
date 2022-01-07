
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_smfc_priv {int lock; int use_count; int ipu; } ;
struct ipu_smfc {struct ipu_smfc_priv* priv; } ;


 int IPU_CONF_SMFC_EN ;
 int ipu_module_enable (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ipu_smfc_enable(struct ipu_smfc *smfc)
{
 struct ipu_smfc_priv *priv = smfc->priv;
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);

 if (!priv->use_count)
  ipu_module_enable(priv->ipu, IPU_CONF_SMFC_EN);

 priv->use_count++;

 spin_unlock_irqrestore(&priv->lock, flags);

 return 0;
}
