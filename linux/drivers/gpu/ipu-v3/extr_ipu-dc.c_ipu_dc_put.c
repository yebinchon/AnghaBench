
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_dc_priv {int mutex; } ;
struct ipu_dc {int in_use; struct ipu_dc_priv* priv; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void ipu_dc_put(struct ipu_dc *dc)
{
 struct ipu_dc_priv *priv = dc->priv;

 mutex_lock(&priv->mutex);
 dc->in_use = 0;
 mutex_unlock(&priv->mutex);
}
