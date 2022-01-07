
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_tvenc {int mmio; struct device* dev; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int DRM_DEV_ERROR (struct device*,char*,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_set_drvdata (struct device*,struct zx_tvenc*) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct zx_tvenc* devm_kzalloc (struct device*,int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 struct platform_device* to_platform_device (struct device*) ;
 int zx_tvenc_pwrctrl_init (struct zx_tvenc*) ;
 int zx_tvenc_register (struct drm_device*,struct zx_tvenc*) ;

__attribute__((used)) static int zx_tvenc_bind(struct device *dev, struct device *master, void *data)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct drm_device *drm = data;
 struct resource *res;
 struct zx_tvenc *tvenc;
 int ret;

 tvenc = devm_kzalloc(dev, sizeof(*tvenc), GFP_KERNEL);
 if (!tvenc)
  return -ENOMEM;

 tvenc->dev = dev;
 dev_set_drvdata(dev, tvenc);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 tvenc->mmio = devm_ioremap_resource(dev, res);
 if (IS_ERR(tvenc->mmio)) {
  ret = PTR_ERR(tvenc->mmio);
  DRM_DEV_ERROR(dev, "failed to remap tvenc region: %d\n", ret);
  return ret;
 }

 ret = zx_tvenc_pwrctrl_init(tvenc);
 if (ret) {
  DRM_DEV_ERROR(dev, "failed to init power control: %d\n", ret);
  return ret;
 }

 ret = zx_tvenc_register(drm, tvenc);
 if (ret) {
  DRM_DEV_ERROR(dev, "failed to register tvenc: %d\n", ret);
  return ret;
 }

 return 0;
}
