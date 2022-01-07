
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {int dev; struct atmel_hlcdc_dc* dev_private; } ;
struct atmel_hlcdc_dc {int wq; TYPE_2__* hlcdc; TYPE_1__* desc; } ;
struct TYPE_4__ {int sys_clk; int periph_clk; } ;
struct TYPE_3__ {scalar_t__ fixed_clksrc; } ;


 int clk_disable_unprepare (int ) ;
 int destroy_workqueue (int ) ;
 int drm_atomic_helper_shutdown (struct drm_device*) ;
 int drm_irq_uninstall (struct drm_device*) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int flush_workqueue (int ) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static void atmel_hlcdc_dc_unload(struct drm_device *dev)
{
 struct atmel_hlcdc_dc *dc = dev->dev_private;

 flush_workqueue(dc->wq);
 drm_kms_helper_poll_fini(dev);
 drm_atomic_helper_shutdown(dev);
 drm_mode_config_cleanup(dev);

 pm_runtime_get_sync(dev->dev);
 drm_irq_uninstall(dev);
 pm_runtime_put_sync(dev->dev);

 dev->dev_private = ((void*)0);

 pm_runtime_disable(dev->dev);
 clk_disable_unprepare(dc->hlcdc->periph_clk);
 if (dc->desc->fixed_clksrc)
  clk_disable_unprepare(dc->hlcdc->sys_clk);
 destroy_workqueue(dc->wq);
}
