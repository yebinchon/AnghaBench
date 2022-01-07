
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jdi_panel {int prepared; int dcdc_en_gpio; int reset_gpio; int enable_gpio; int supplies; TYPE_1__* dsi; } ;
struct drm_panel {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ARRAY_SIZE (int ) ;
 int dev_err (struct device*,char*,int) ;
 int gpiod_set_value (int ,int) ;
 int jdi_panel_init (struct jdi_panel*) ;
 int jdi_panel_on (struct jdi_panel*) ;
 int msleep (int) ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 struct jdi_panel* to_jdi_panel (struct drm_panel*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int jdi_panel_prepare(struct drm_panel *panel)
{
 struct jdi_panel *jdi = to_jdi_panel(panel);
 struct device *dev = &jdi->dsi->dev;
 int ret;

 if (jdi->prepared)
  return 0;

 ret = regulator_bulk_enable(ARRAY_SIZE(jdi->supplies), jdi->supplies);
 if (ret < 0) {
  dev_err(dev, "regulator enable failed, %d\n", ret);
  return ret;
 }

 msleep(20);

 gpiod_set_value(jdi->dcdc_en_gpio, 1);
 usleep_range(10, 20);

 gpiod_set_value(jdi->reset_gpio, 0);
 usleep_range(10, 20);

 gpiod_set_value(jdi->enable_gpio, 1);
 usleep_range(10, 20);

 ret = jdi_panel_init(jdi);
 if (ret < 0) {
  dev_err(dev, "failed to init panel: %d\n", ret);
  goto poweroff;
 }

 ret = jdi_panel_on(jdi);
 if (ret < 0) {
  dev_err(dev, "failed to set panel on: %d\n", ret);
  goto poweroff;
 }

 jdi->prepared = 1;

 return 0;

poweroff:
 ret = regulator_bulk_disable(ARRAY_SIZE(jdi->supplies), jdi->supplies);
 if (ret < 0)
  dev_err(dev, "regulator disable failed, %d\n", ret);

 gpiod_set_value(jdi->enable_gpio, 0);

 gpiod_set_value(jdi->reset_gpio, 1);

 gpiod_set_value(jdi->dcdc_en_gpio, 0);

 return ret;
}
