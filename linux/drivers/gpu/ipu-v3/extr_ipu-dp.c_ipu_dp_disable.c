
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_soc {struct ipu_dp_priv* dp_priv; } ;
struct ipu_dp_priv {scalar_t__ use_count; int mutex; int ipu; } ;


 int IPU_CONF_DP_EN ;
 int ipu_module_disable (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ipu_dp_disable(struct ipu_soc *ipu)
{
 struct ipu_dp_priv *priv = ipu->dp_priv;

 mutex_lock(&priv->mutex);

 priv->use_count--;

 if (!priv->use_count)
  ipu_module_disable(priv->ipu, IPU_CONF_DP_EN);

 if (priv->use_count < 0)
  priv->use_count = 0;

 mutex_unlock(&priv->mutex);
}
