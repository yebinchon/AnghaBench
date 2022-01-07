
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct nvkm_device_tegra_func {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct drm_device {int dummy; } ;


 scalar_t__ IS_ERR (struct drm_device*) ;
 int PTR_ERR (struct drm_device*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_register (struct drm_device*,int ) ;
 struct drm_device* nouveau_platform_device_create (struct nvkm_device_tegra_func const*,struct platform_device*,struct nvkm_device**) ;
 struct nvkm_device_tegra_func* of_device_get_match_data (int *) ;

__attribute__((used)) static int nouveau_platform_probe(struct platform_device *pdev)
{
 const struct nvkm_device_tegra_func *func;
 struct nvkm_device *device = ((void*)0);
 struct drm_device *drm;
 int ret;

 func = of_device_get_match_data(&pdev->dev);

 drm = nouveau_platform_device_create(func, pdev, &device);
 if (IS_ERR(drm))
  return PTR_ERR(drm);

 ret = drm_dev_register(drm, 0);
 if (ret < 0) {
  drm_dev_put(drm);
  return ret;
 }

 return 0;
}
