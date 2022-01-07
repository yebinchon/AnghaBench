
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct device* dev; int * funcs; } ;
struct osd101t2587_panel {TYPE_2__ base; TYPE_1__* dsi; int backlight; int supply; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_of_find_backlight (struct device*) ;
 int devm_regulator_get (struct device*,char*) ;
 int drm_panel_add (TYPE_2__*) ;
 int drm_panel_init (TYPE_2__*) ;
 int osd101t2587_panel_funcs ;

__attribute__((used)) static int osd101t2587_panel_add(struct osd101t2587_panel *osd101t2587)
{
 struct device *dev = &osd101t2587->dsi->dev;

 osd101t2587->supply = devm_regulator_get(dev, "power");
 if (IS_ERR(osd101t2587->supply))
  return PTR_ERR(osd101t2587->supply);

 osd101t2587->backlight = devm_of_find_backlight(dev);
 if (IS_ERR(osd101t2587->backlight))
  return PTR_ERR(osd101t2587->backlight);

 drm_panel_init(&osd101t2587->base);
 osd101t2587->base.funcs = &osd101t2587_panel_funcs;
 osd101t2587->base.dev = &osd101t2587->dsi->dev;

 return drm_panel_add(&osd101t2587->base);
}
