
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_soc {struct ipu_dc_priv* dc_priv; } ;
struct ipu_dc_priv {int mutex; int use_count; int ipu; } ;


 int IPU_CONF_DC_EN ;
 int ipu_module_enable (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ipu_dc_enable(struct ipu_soc *ipu)
{
 struct ipu_dc_priv *priv = ipu->dc_priv;

 mutex_lock(&priv->mutex);

 if (!priv->use_count)
  ipu_module_enable(priv->ipu, IPU_CONF_DC_EN);

 priv->use_count++;

 mutex_unlock(&priv->mutex);
}
