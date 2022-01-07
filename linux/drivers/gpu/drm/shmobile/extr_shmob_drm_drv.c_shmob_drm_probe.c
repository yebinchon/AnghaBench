
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct shmob_drm_platform_data {int clk_source; } ;
struct shmob_drm_device {struct drm_device* ddev; struct drm_device* mmio; int irq_lock; struct shmob_drm_platform_data* pdata; TYPE_1__* dev; } ;
struct resource {int dummy; } ;
struct TYPE_5__ {struct shmob_drm_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct drm_device {struct shmob_drm_device* dev_private; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct drm_device*) ;
 int PTR_ERR (struct drm_device*) ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct drm_device* devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct shmob_drm_device* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct drm_device* drm_dev_alloc (int *,TYPE_1__*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_register (struct drm_device*,int ) ;
 int drm_irq_install (struct drm_device*,int ) ;
 int drm_irq_uninstall (struct drm_device*) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int drm_vblank_init (struct drm_device*,int) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct shmob_drm_device*) ;
 int shmob_drm_driver ;
 int shmob_drm_init_interface (struct shmob_drm_device*) ;
 int shmob_drm_modeset_init (struct shmob_drm_device*) ;
 int shmob_drm_plane_create (struct shmob_drm_device*,unsigned int) ;
 int shmob_drm_setup_clocks (struct shmob_drm_device*,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int shmob_drm_probe(struct platform_device *pdev)
{
 struct shmob_drm_platform_data *pdata = pdev->dev.platform_data;
 struct shmob_drm_device *sdev;
 struct drm_device *ddev;
 struct resource *res;
 unsigned int i;
 int ret;

 if (pdata == ((void*)0)) {
  dev_err(&pdev->dev, "no platform data\n");
  return -EINVAL;
 }





 sdev = devm_kzalloc(&pdev->dev, sizeof(*sdev), GFP_KERNEL);
 if (sdev == ((void*)0))
  return -ENOMEM;

 sdev->dev = &pdev->dev;
 sdev->pdata = pdata;
 spin_lock_init(&sdev->irq_lock);

 platform_set_drvdata(pdev, sdev);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 sdev->mmio = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(sdev->mmio))
  return PTR_ERR(sdev->mmio);

 ret = shmob_drm_setup_clocks(sdev, pdata->clk_source);
 if (ret < 0)
  return ret;

 ret = shmob_drm_init_interface(sdev);
 if (ret < 0)
  return ret;


 ddev = drm_dev_alloc(&shmob_drm_driver, &pdev->dev);
 if (IS_ERR(ddev))
  return PTR_ERR(ddev);

 sdev->ddev = ddev;
 ddev->dev_private = sdev;

 ret = shmob_drm_modeset_init(sdev);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to initialize mode setting\n");
  goto err_free_drm_dev;
 }

 for (i = 0; i < 4; ++i) {
  ret = shmob_drm_plane_create(sdev, i);
  if (ret < 0) {
   dev_err(&pdev->dev, "failed to create plane %u\n", i);
   goto err_modeset_cleanup;
  }
 }

 ret = drm_vblank_init(ddev, 1);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to initialize vblank\n");
  goto err_modeset_cleanup;
 }

 ret = drm_irq_install(ddev, platform_get_irq(pdev, 0));
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to install IRQ handler\n");
  goto err_modeset_cleanup;
 }





 ret = drm_dev_register(ddev, 0);
 if (ret < 0)
  goto err_irq_uninstall;

 return 0;

err_irq_uninstall:
 drm_irq_uninstall(ddev);
err_modeset_cleanup:
 drm_kms_helper_poll_fini(ddev);
 drm_mode_config_cleanup(ddev);
err_free_drm_dev:
 drm_dev_put(ddev);

 return ret;
}
