
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hibmc_drm_private {int * fbdev; } ;


 int hibmc_fbdev_destroy (int *) ;

void hibmc_fbdev_fini(struct hibmc_drm_private *priv)
{
 if (!priv->fbdev)
  return;

 hibmc_fbdev_destroy(priv->fbdev);
 priv->fbdev = ((void*)0);
}
