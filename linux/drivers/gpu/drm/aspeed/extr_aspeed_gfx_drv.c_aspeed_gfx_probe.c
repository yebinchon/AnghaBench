
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct drm_device {int dummy; } ;


 scalar_t__ IS_ERR (struct drm_device*) ;
 int PTR_ERR (struct drm_device*) ;
 int aspeed_gfx_driver ;
 int aspeed_gfx_load (struct drm_device*) ;
 int aspeed_gfx_unload (struct drm_device*) ;
 struct drm_device* drm_dev_alloc (int *,int *) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_register (struct drm_device*,int ) ;

__attribute__((used)) static int aspeed_gfx_probe(struct platform_device *pdev)
{
 struct drm_device *drm;
 int ret;

 drm = drm_dev_alloc(&aspeed_gfx_driver, &pdev->dev);
 if (IS_ERR(drm))
  return PTR_ERR(drm);

 ret = aspeed_gfx_load(drm);
 if (ret)
  goto err_free;

 ret = drm_dev_register(drm, 0);
 if (ret)
  goto err_unload;

 return 0;

err_unload:
 aspeed_gfx_unload(drm);
err_free:
 drm_dev_put(drm);

 return ret;
}
