
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dev; } ;
struct device {int dummy; } ;


 int component_bind_all (int ,struct drm_device*) ;
 int component_unbind_all (int ,struct drm_device*) ;
 int dev_err (struct device*,char*) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int drm_dev_register (struct drm_device*,int ) ;
 int drm_mode_config_init (struct drm_device*) ;
 int mcde_modeset_init (struct drm_device*) ;

__attribute__((used)) static int mcde_drm_bind(struct device *dev)
{
 struct drm_device *drm = dev_get_drvdata(dev);
 int ret;

 drm_mode_config_init(drm);

 ret = component_bind_all(drm->dev, drm);
 if (ret) {
  dev_err(dev, "can't bind component devices\n");
  return ret;
 }

 ret = mcde_modeset_init(drm);
 if (ret)
  goto unbind;

 ret = drm_dev_register(drm, 0);
 if (ret < 0)
  goto unbind;

 return 0;

unbind:
 component_unbind_all(drm->dev, drm);
 return ret;
}
