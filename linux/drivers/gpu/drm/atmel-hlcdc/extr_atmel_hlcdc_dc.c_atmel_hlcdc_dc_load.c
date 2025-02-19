
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_15__ {TYPE_10__* parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_device_id {TYPE_2__* data; } ;
struct drm_device {TYPE_3__* dev; struct atmel_hlcdc_dc* dev_private; } ;
struct TYPE_13__ {int wait; } ;
struct atmel_hlcdc_dc {int wq; TYPE_9__* hlcdc; TYPE_2__* desc; TYPE_1__ commit; } ;
struct TYPE_16__ {int sys_clk; int periph_clk; int irq; } ;
struct TYPE_14__ {scalar_t__ fixed_clksrc; } ;
struct TYPE_12__ {int of_node; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int alloc_ordered_workqueue (char*,int ) ;
 int atmel_hlcdc_dc_modeset_init (struct drm_device*) ;
 int atmel_hlcdc_of_match ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int destroy_workqueue (int ) ;
 int dev_err (TYPE_3__*,char*) ;
 TYPE_9__* dev_get_drvdata (TYPE_10__*) ;
 struct atmel_hlcdc_dc* devm_kzalloc (TYPE_3__*,int,int ) ;
 int drm_irq_install (struct drm_device*,int ) ;
 int drm_kms_helper_poll_init (struct drm_device*) ;
 int drm_mode_config_reset (struct drm_device*) ;
 int drm_vblank_init (struct drm_device*,int) ;
 int init_waitqueue_head (int *) ;
 struct of_device_id* of_match_node (int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct drm_device*) ;
 int pm_runtime_disable (TYPE_3__*) ;
 int pm_runtime_enable (TYPE_3__*) ;
 int pm_runtime_get_sync (TYPE_3__*) ;
 int pm_runtime_put_sync (TYPE_3__*) ;
 struct platform_device* to_platform_device (TYPE_3__*) ;

__attribute__((used)) static int atmel_hlcdc_dc_load(struct drm_device *dev)
{
 struct platform_device *pdev = to_platform_device(dev->dev);
 const struct of_device_id *match;
 struct atmel_hlcdc_dc *dc;
 int ret;

 match = of_match_node(atmel_hlcdc_of_match, dev->dev->parent->of_node);
 if (!match) {
  dev_err(&pdev->dev, "invalid compatible string\n");
  return -ENODEV;
 }

 if (!match->data) {
  dev_err(&pdev->dev, "invalid hlcdc description\n");
  return -EINVAL;
 }

 dc = devm_kzalloc(dev->dev, sizeof(*dc), GFP_KERNEL);
 if (!dc)
  return -ENOMEM;

 dc->wq = alloc_ordered_workqueue("atmel-hlcdc-dc", 0);
 if (!dc->wq)
  return -ENOMEM;

 init_waitqueue_head(&dc->commit.wait);
 dc->desc = match->data;
 dc->hlcdc = dev_get_drvdata(dev->dev->parent);
 dev->dev_private = dc;

 if (dc->desc->fixed_clksrc) {
  ret = clk_prepare_enable(dc->hlcdc->sys_clk);
  if (ret) {
   dev_err(dev->dev, "failed to enable sys_clk\n");
   goto err_destroy_wq;
  }
 }

 ret = clk_prepare_enable(dc->hlcdc->periph_clk);
 if (ret) {
  dev_err(dev->dev, "failed to enable periph_clk\n");
  goto err_sys_clk_disable;
 }

 pm_runtime_enable(dev->dev);

 ret = drm_vblank_init(dev, 1);
 if (ret < 0) {
  dev_err(dev->dev, "failed to initialize vblank\n");
  goto err_periph_clk_disable;
 }

 ret = atmel_hlcdc_dc_modeset_init(dev);
 if (ret < 0) {
  dev_err(dev->dev, "failed to initialize mode setting\n");
  goto err_periph_clk_disable;
 }

 drm_mode_config_reset(dev);

 pm_runtime_get_sync(dev->dev);
 ret = drm_irq_install(dev, dc->hlcdc->irq);
 pm_runtime_put_sync(dev->dev);
 if (ret < 0) {
  dev_err(dev->dev, "failed to install IRQ handler\n");
  goto err_periph_clk_disable;
 }

 platform_set_drvdata(pdev, dev);

 drm_kms_helper_poll_init(dev);

 return 0;

err_periph_clk_disable:
 pm_runtime_disable(dev->dev);
 clk_disable_unprepare(dc->hlcdc->periph_clk);
err_sys_clk_disable:
 if (dc->desc->fixed_clksrc)
  clk_disable_unprepare(dc->hlcdc->sys_clk);

err_destroy_wq:
 destroy_workqueue(dc->wq);

 return ret;
}
