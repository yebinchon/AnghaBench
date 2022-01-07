
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct device* dev; int * funcs; } ;
struct kingdisplay_panel {TYPE_2__ base; TYPE_1__* link; int * backlight; int * enable_gpio; int * supply; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;


 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_dbg (struct device*,char*,int) ;
 int * devm_gpiod_get_optional (struct device*,char*,int ) ;
 int * devm_of_find_backlight (struct device*) ;
 int * devm_regulator_get (struct device*,char*) ;
 int drm_panel_add (TYPE_2__*) ;
 int drm_panel_init (TYPE_2__*) ;
 int kingdisplay_panel_funcs ;

__attribute__((used)) static int kingdisplay_panel_add(struct kingdisplay_panel *kingdisplay)
{
 struct device *dev = &kingdisplay->link->dev;
 int err;

 kingdisplay->supply = devm_regulator_get(dev, "power");
 if (IS_ERR(kingdisplay->supply))
  return PTR_ERR(kingdisplay->supply);

 kingdisplay->enable_gpio = devm_gpiod_get_optional(dev, "enable",
          GPIOD_OUT_HIGH);
 if (IS_ERR(kingdisplay->enable_gpio)) {
  err = PTR_ERR(kingdisplay->enable_gpio);
  dev_dbg(dev, "failed to get enable gpio: %d\n", err);
  kingdisplay->enable_gpio = ((void*)0);
 }

 kingdisplay->backlight = devm_of_find_backlight(dev);
 if (IS_ERR(kingdisplay->backlight))
  return PTR_ERR(kingdisplay->backlight);

 drm_panel_init(&kingdisplay->base);
 kingdisplay->base.funcs = &kingdisplay_panel_funcs;
 kingdisplay->base.dev = &kingdisplay->link->dev;

 return drm_panel_add(&kingdisplay->base);
}
