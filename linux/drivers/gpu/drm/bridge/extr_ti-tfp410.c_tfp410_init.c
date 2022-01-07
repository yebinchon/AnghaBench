
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * timings; scalar_t__ of_node; int * funcs; } ;
struct tfp410 {int hpd_irq; scalar_t__ hpd; int ddc; TYPE_1__ bridge; int hpd_work; int powerdown; struct device* dev; int timings; } ;
struct device {scalar_t__ of_node; } ;


 int DRM_ERROR (char*) ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct tfp410*) ;
 int devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct tfp410* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_threaded_irq (struct device*,int,int *,int ,int,char*,struct tfp410*) ;
 int drm_bridge_add (TYPE_1__*) ;
 int gpiod_put (scalar_t__) ;
 int gpiod_to_irq (scalar_t__) ;
 int i2c_put_adapter (int ) ;
 int tfp410_bridge_funcs ;
 int tfp410_get_connector_properties (struct tfp410*) ;
 int tfp410_hpd_irq_thread ;
 int tfp410_hpd_work_func ;
 int tfp410_parse_timings (struct tfp410*,int) ;

__attribute__((used)) static int tfp410_init(struct device *dev, bool i2c)
{
 struct tfp410 *dvi;
 int ret;

 if (!dev->of_node) {
  dev_err(dev, "device-tree data is missing\n");
  return -ENXIO;
 }

 dvi = devm_kzalloc(dev, sizeof(*dvi), GFP_KERNEL);
 if (!dvi)
  return -ENOMEM;
 dev_set_drvdata(dev, dvi);

 dvi->bridge.funcs = &tfp410_bridge_funcs;
 dvi->bridge.of_node = dev->of_node;
 dvi->bridge.timings = &dvi->timings;
 dvi->dev = dev;

 ret = tfp410_parse_timings(dvi, i2c);
 if (ret)
  goto fail;

 ret = tfp410_get_connector_properties(dvi);
 if (ret)
  goto fail;

 dvi->powerdown = devm_gpiod_get_optional(dev, "powerdown",
       GPIOD_OUT_HIGH);
 if (IS_ERR(dvi->powerdown)) {
  dev_err(dev, "failed to parse powerdown gpio\n");
  return PTR_ERR(dvi->powerdown);
 }

 if (dvi->hpd)
  dvi->hpd_irq = gpiod_to_irq(dvi->hpd);
 else
  dvi->hpd_irq = -ENXIO;

 if (dvi->hpd_irq >= 0) {
  INIT_DELAYED_WORK(&dvi->hpd_work, tfp410_hpd_work_func);

  ret = devm_request_threaded_irq(dev, dvi->hpd_irq,
   ((void*)0), tfp410_hpd_irq_thread, IRQF_TRIGGER_RISING |
   IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
   "hdmi-hpd", dvi);
  if (ret) {
   DRM_ERROR("failed to register hpd interrupt\n");
   goto fail;
  }
 }

 drm_bridge_add(&dvi->bridge);

 return 0;
fail:
 i2c_put_adapter(dvi->ddc);
 if (dvi->hpd)
  gpiod_put(dvi->hpd);
 return ret;
}
