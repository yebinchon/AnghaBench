
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct rcar_du_device {struct drm_device* ddev; struct drm_device* mmio; int * dev; int info; } ;
struct platform_device {int dev; } ;
struct drm_device {int irq_enabled; struct rcar_du_device* dev_private; } ;


 int DRM_INFO (char*,int ) ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct drm_device*) ;
 int PTR_ERR (struct drm_device*) ;
 int dev_err (int *,char*,int) ;
 int dev_name (int *) ;
 struct drm_device* devm_ioremap_resource (int *,struct resource*) ;
 struct rcar_du_device* devm_kzalloc (int *,int,int ) ;
 struct drm_device* drm_dev_alloc (int *,int *) ;
 int drm_dev_register (struct drm_device*,int ) ;
 int drm_fbdev_generic_setup (struct drm_device*,int) ;
 int of_device_get_match_data (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rcar_du_device*) ;
 int rcar_du_driver ;
 int rcar_du_modeset_init (struct rcar_du_device*) ;
 int rcar_du_remove (struct platform_device*) ;

__attribute__((used)) static int rcar_du_probe(struct platform_device *pdev)
{
 struct rcar_du_device *rcdu;
 struct drm_device *ddev;
 struct resource *mem;
 int ret;


 rcdu = devm_kzalloc(&pdev->dev, sizeof(*rcdu), GFP_KERNEL);
 if (rcdu == ((void*)0))
  return -ENOMEM;

 rcdu->dev = &pdev->dev;
 rcdu->info = of_device_get_match_data(rcdu->dev);

 platform_set_drvdata(pdev, rcdu);


 mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 rcdu->mmio = devm_ioremap_resource(&pdev->dev, mem);
 if (IS_ERR(rcdu->mmio))
  return PTR_ERR(rcdu->mmio);


 ddev = drm_dev_alloc(&rcar_du_driver, &pdev->dev);
 if (IS_ERR(ddev))
  return PTR_ERR(ddev);

 rcdu->ddev = ddev;
 ddev->dev_private = rcdu;

 ret = rcar_du_modeset_init(rcdu);
 if (ret < 0) {
  if (ret != -EPROBE_DEFER)
   dev_err(&pdev->dev,
    "failed to initialize DRM/KMS (%d)\n", ret);
  goto error;
 }

 ddev->irq_enabled = 1;





 ret = drm_dev_register(ddev, 0);
 if (ret)
  goto error;

 DRM_INFO("Device %s probed\n", dev_name(&pdev->dev));

 drm_fbdev_generic_setup(ddev, 32);

 return 0;

error:
 rcar_du_remove(pdev);

 return ret;
}
