
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mixer_drv_data {scalar_t__ has_sclk; scalar_t__ is_vp_enabled; int version; } ;
struct mixer_context {int flags; int mxr_ver; struct device* dev; struct platform_device* pdev; } ;


 int DRM_DEV_ERROR (struct device*,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MXR_BIT_HAS_SCLK ;
 int MXR_BIT_VP_ENABLED ;
 int __set_bit (int ,int *) ;
 int component_add (struct device*,int *) ;
 struct mixer_context* devm_kzalloc (struct device*,int,int ) ;
 int mixer_component_ops ;
 struct mixer_drv_data* of_device_get_match_data (struct device*) ;
 int platform_set_drvdata (struct platform_device*,struct mixer_context*) ;
 int pm_runtime_enable (struct device*) ;

__attribute__((used)) static int mixer_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 const struct mixer_drv_data *drv;
 struct mixer_context *ctx;
 int ret;

 ctx = devm_kzalloc(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx) {
  DRM_DEV_ERROR(dev, "failed to alloc mixer context.\n");
  return -ENOMEM;
 }

 drv = of_device_get_match_data(dev);

 ctx->pdev = pdev;
 ctx->dev = dev;
 ctx->mxr_ver = drv->version;

 if (drv->is_vp_enabled)
  __set_bit(MXR_BIT_VP_ENABLED, &ctx->flags);
 if (drv->has_sclk)
  __set_bit(MXR_BIT_HAS_SCLK, &ctx->flags);

 platform_set_drvdata(pdev, ctx);

 ret = component_add(&pdev->dev, &mixer_component_ops);
 if (!ret)
  pm_runtime_enable(dev);

 return ret;
}
