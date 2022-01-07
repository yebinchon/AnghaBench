
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_psb_private {int * fbdev; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;


 int kfree (int *) ;
 int psb_fbdev_destroy (struct drm_device*,int *) ;

__attribute__((used)) static void psb_fbdev_fini(struct drm_device *dev)
{
 struct drm_psb_private *dev_priv = dev->dev_private;

 if (!dev_priv->fbdev)
  return;

 psb_fbdev_destroy(dev, dev_priv->fbdev);
 kfree(dev_priv->fbdev);
 dev_priv->fbdev = ((void*)0);
}
