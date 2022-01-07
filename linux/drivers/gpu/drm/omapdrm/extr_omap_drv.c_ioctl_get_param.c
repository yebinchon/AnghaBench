
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_drm_private {int omaprev; } ;
struct drm_omap_param {int param; int value; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct omap_drm_private* dev_private; } ;


 int DBG (char*,...) ;
 int EINVAL ;


__attribute__((used)) static int ioctl_get_param(struct drm_device *dev, void *data,
  struct drm_file *file_priv)
{
 struct omap_drm_private *priv = dev->dev_private;
 struct drm_omap_param *args = data;

 DBG("%p: param=%llu", dev, args->param);

 switch (args->param) {
 case 128:
  args->value = priv->omaprev;
  break;
 default:
  DBG("unknown parameter %lld", args->param);
  return -EINVAL;
 }

 return 0;
}
