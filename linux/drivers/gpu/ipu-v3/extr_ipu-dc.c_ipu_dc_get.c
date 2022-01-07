
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_soc {struct ipu_dc_priv* dc_priv; } ;
struct ipu_dc_priv {int mutex; struct ipu_dc* channels; } ;
struct ipu_dc {int in_use; } ;


 int EBUSY ;
 int ENODEV ;
 struct ipu_dc* ERR_PTR (int ) ;
 int IPU_DC_NUM_CHANNELS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct ipu_dc *ipu_dc_get(struct ipu_soc *ipu, int channel)
{
 struct ipu_dc_priv *priv = ipu->dc_priv;
 struct ipu_dc *dc;

 if (channel >= IPU_DC_NUM_CHANNELS)
  return ERR_PTR(-ENODEV);

 dc = &priv->channels[channel];

 mutex_lock(&priv->mutex);

 if (dc->in_use) {
  mutex_unlock(&priv->mutex);
  return ERR_PTR(-EBUSY);
 }

 dc->in_use = 1;

 mutex_unlock(&priv->mutex);

 return dc;
}
