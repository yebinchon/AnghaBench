
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct device* dev; int * funcs; } ;
struct sharp_nt_panel {TYPE_2__ base; TYPE_1__* dsi; int * backlight; int * reset_gpio; int * supply; int * mode; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;


 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int default_mode ;
 int dev_err (struct device*,char*,int) ;
 int * devm_gpiod_get (struct device*,char*,int ) ;
 int * devm_of_find_backlight (struct device*) ;
 int * devm_regulator_get (struct device*,char*) ;
 int drm_panel_add (TYPE_2__*) ;
 int drm_panel_init (TYPE_2__*) ;
 int gpiod_set_value (int *,int ) ;
 int sharp_nt_panel_funcs ;

__attribute__((used)) static int sharp_nt_panel_add(struct sharp_nt_panel *sharp_nt)
{
 struct device *dev = &sharp_nt->dsi->dev;

 sharp_nt->mode = &default_mode;

 sharp_nt->supply = devm_regulator_get(dev, "avdd");
 if (IS_ERR(sharp_nt->supply))
  return PTR_ERR(sharp_nt->supply);

 sharp_nt->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(sharp_nt->reset_gpio)) {
  dev_err(dev, "cannot get reset-gpios %ld\n",
   PTR_ERR(sharp_nt->reset_gpio));
  sharp_nt->reset_gpio = ((void*)0);
 } else {
  gpiod_set_value(sharp_nt->reset_gpio, 0);
 }

 sharp_nt->backlight = devm_of_find_backlight(dev);

 if (IS_ERR(sharp_nt->backlight))
  return PTR_ERR(sharp_nt->backlight);

 drm_panel_init(&sharp_nt->base);
 sharp_nt->base.funcs = &sharp_nt_panel_funcs;
 sharp_nt->base.dev = &sharp_nt->dsi->dev;

 return drm_panel_add(&sharp_nt->base);
}
