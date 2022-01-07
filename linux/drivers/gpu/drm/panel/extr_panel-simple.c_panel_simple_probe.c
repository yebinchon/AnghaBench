
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * funcs; struct device* dev; } ;
struct panel_simple {int enabled; int prepared; TYPE_2__* backlight; TYPE_1__* ddc; TYPE_3__ base; int enable_gpio; int supply; int no_hpd; struct panel_desc const* desc; } ;
struct panel_desc {int dummy; } ;
struct display_timing {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int dev; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 int dev_set_drvdata (struct device*,struct panel_simple*) ;
 int devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct panel_simple* devm_kzalloc (struct device*,int,int ) ;
 int devm_regulator_get (struct device*,char*) ;
 int drm_panel_add (TYPE_3__*) ;
 int drm_panel_init (TYPE_3__*) ;
 TYPE_2__* of_find_backlight_by_node (struct device_node*) ;
 TYPE_1__* of_find_i2c_adapter_by_node (struct device_node*) ;
 int of_get_display_timing (int ,char*,struct display_timing*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int of_property_read_bool (int ,char*) ;
 int panel_simple_funcs ;
 int panel_simple_parse_panel_timing_node (struct device*,struct panel_simple*,struct display_timing*) ;
 int put_device (int *) ;

__attribute__((used)) static int panel_simple_probe(struct device *dev, const struct panel_desc *desc)
{
 struct device_node *backlight, *ddc;
 struct panel_simple *panel;
 struct display_timing dt;
 int err;

 panel = devm_kzalloc(dev, sizeof(*panel), GFP_KERNEL);
 if (!panel)
  return -ENOMEM;

 panel->enabled = 0;
 panel->prepared = 0;
 panel->desc = desc;

 panel->no_hpd = of_property_read_bool(dev->of_node, "no-hpd");

 panel->supply = devm_regulator_get(dev, "power");
 if (IS_ERR(panel->supply))
  return PTR_ERR(panel->supply);

 panel->enable_gpio = devm_gpiod_get_optional(dev, "enable",
           GPIOD_OUT_LOW);
 if (IS_ERR(panel->enable_gpio)) {
  err = PTR_ERR(panel->enable_gpio);
  if (err != -EPROBE_DEFER)
   dev_err(dev, "failed to request GPIO: %d\n", err);
  return err;
 }

 backlight = of_parse_phandle(dev->of_node, "backlight", 0);
 if (backlight) {
  panel->backlight = of_find_backlight_by_node(backlight);
  of_node_put(backlight);

  if (!panel->backlight)
   return -EPROBE_DEFER;
 }

 ddc = of_parse_phandle(dev->of_node, "ddc-i2c-bus", 0);
 if (ddc) {
  panel->ddc = of_find_i2c_adapter_by_node(ddc);
  of_node_put(ddc);

  if (!panel->ddc) {
   err = -EPROBE_DEFER;
   goto free_backlight;
  }
 }

 if (!of_get_display_timing(dev->of_node, "panel-timing", &dt))
  panel_simple_parse_panel_timing_node(dev, panel, &dt);

 drm_panel_init(&panel->base);
 panel->base.dev = dev;
 panel->base.funcs = &panel_simple_funcs;

 err = drm_panel_add(&panel->base);
 if (err < 0)
  goto free_ddc;

 dev_set_drvdata(dev, panel);

 return 0;

free_ddc:
 if (panel->ddc)
  put_device(&panel->ddc->dev);
free_backlight:
 if (panel->backlight)
  put_device(&panel->backlight->dev);

 return err;
}
