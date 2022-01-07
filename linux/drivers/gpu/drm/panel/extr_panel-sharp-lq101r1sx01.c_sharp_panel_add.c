
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct device* dev; int * funcs; } ;
struct sharp_panel {TYPE_2__ base; TYPE_1__* link1; int backlight; int supply; int * mode; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int default_mode ;
 int devm_of_find_backlight (struct device*) ;
 int devm_regulator_get (struct device*,char*) ;
 int drm_panel_add (TYPE_2__*) ;
 int drm_panel_init (TYPE_2__*) ;
 int sharp_panel_funcs ;

__attribute__((used)) static int sharp_panel_add(struct sharp_panel *sharp)
{
 struct device *dev = &sharp->link1->dev;

 sharp->mode = &default_mode;

 sharp->supply = devm_regulator_get(&sharp->link1->dev, "power");
 if (IS_ERR(sharp->supply))
  return PTR_ERR(sharp->supply);

 sharp->backlight = devm_of_find_backlight(dev);

 if (IS_ERR(sharp->backlight))
  return PTR_ERR(sharp->backlight);

 drm_panel_init(&sharp->base);
 sharp->base.funcs = &sharp_panel_funcs;
 sharp->base.dev = &sharp->link1->dev;

 return drm_panel_add(&sharp->base);
}
