
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_ic_priv {int lock; int use_count; int ipu; } ;
struct ipu_ic {scalar_t__ rotation; struct ipu_ic_priv* priv; } ;


 int IPU_CONF_IC_EN ;
 int ipu_irt_enable (struct ipu_ic*) ;
 int ipu_module_enable (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ipu_ic_enable(struct ipu_ic *ic)
{
 struct ipu_ic_priv *priv = ic->priv;
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);

 if (!priv->use_count)
  ipu_module_enable(priv->ipu, IPU_CONF_IC_EN);

 priv->use_count++;

 if (ic->rotation)
  ipu_irt_enable(ic);

 spin_unlock_irqrestore(&priv->lock, flags);

 return 0;
}
