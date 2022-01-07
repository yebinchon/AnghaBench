
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_dmfc_priv {scalar_t__ use_count; int mutex; int ipu; } ;
struct dmfc_channel {struct ipu_dmfc_priv* priv; } ;


 int IPU_CONF_DMFC_EN ;
 int ipu_module_disable (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ipu_dmfc_disable_channel(struct dmfc_channel *dmfc)
{
 struct ipu_dmfc_priv *priv = dmfc->priv;

 mutex_lock(&priv->mutex);

 priv->use_count--;

 if (!priv->use_count)
  ipu_module_disable(priv->ipu, IPU_CONF_DMFC_EN);

 if (priv->use_count < 0)
  priv->use_count = 0;

 mutex_unlock(&priv->mutex);
}
