
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct nvkm_device_tegra_func {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct drm_device {int dummy; } ;


 struct drm_device* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct drm_device*) ;
 int PTR_ERR (struct drm_device*) ;
 int driver_platform ;
 struct drm_device* drm_dev_alloc (int *,int *) ;
 int drm_dev_put (struct drm_device*) ;
 int nouveau_config ;
 int nouveau_debug ;
 int nouveau_drm_device_init (struct drm_device*) ;
 int nvkm_device_del (struct nvkm_device**) ;
 int nvkm_device_tegra_new (struct nvkm_device_tegra_func const*,struct platform_device*,int ,int ,int,int,unsigned long long,struct nvkm_device**) ;
 int platform_set_drvdata (struct platform_device*,struct drm_device*) ;

struct drm_device *
nouveau_platform_device_create(const struct nvkm_device_tegra_func *func,
          struct platform_device *pdev,
          struct nvkm_device **pdevice)
{
 struct drm_device *drm;
 int err;

 err = nvkm_device_tegra_new(func, pdev, nouveau_config, nouveau_debug,
        1, 1, ~0ULL, pdevice);
 if (err)
  goto err_free;

 drm = drm_dev_alloc(&driver_platform, &pdev->dev);
 if (IS_ERR(drm)) {
  err = PTR_ERR(drm);
  goto err_free;
 }

 err = nouveau_drm_device_init(drm);
 if (err)
  goto err_put;

 platform_set_drvdata(pdev, drm);

 return drm;

err_put:
 drm_dev_put(drm);
err_free:
 nvkm_device_del(pdevice);

 return ERR_PTR(err);
}
