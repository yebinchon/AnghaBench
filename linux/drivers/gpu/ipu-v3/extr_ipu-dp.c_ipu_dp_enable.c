
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_soc {struct ipu_dp_priv* dp_priv; } ;
struct ipu_dp_priv {int mutex; int use_count; int ipu; } ;


 int IPU_CONF_DP_EN ;
 int ipu_module_enable (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ipu_dp_enable(struct ipu_soc *ipu)
{
 struct ipu_dp_priv *priv = ipu->dp_priv;

 mutex_lock(&priv->mutex);

 if (!priv->use_count)
  ipu_module_enable(priv->ipu, IPU_CONF_DP_EN);

 priv->use_count++;

 mutex_unlock(&priv->mutex);

 return 0;
}
