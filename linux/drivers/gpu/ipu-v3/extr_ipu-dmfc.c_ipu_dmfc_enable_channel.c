
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_dmfc_priv {int mutex; int use_count; int ipu; } ;
struct dmfc_channel {struct ipu_dmfc_priv* priv; } ;


 int IPU_CONF_DMFC_EN ;
 int ipu_module_enable (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ipu_dmfc_enable_channel(struct dmfc_channel *dmfc)
{
 struct ipu_dmfc_priv *priv = dmfc->priv;
 mutex_lock(&priv->mutex);

 if (!priv->use_count)
  ipu_module_enable(priv->ipu, IPU_CONF_DMFC_EN);

 priv->use_count++;

 mutex_unlock(&priv->mutex);

 return 0;
}
