
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct seiko_panel_desc {int dummy; } ;
struct TYPE_3__ {int * funcs; struct device* dev; } ;
struct seiko_panel {int enabled; int prepared; TYPE_1__ base; int backlight; void* avdd; void* dvdd; struct seiko_panel_desc const* desc; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_set_drvdata (struct device*,struct seiko_panel*) ;
 struct seiko_panel* devm_kzalloc (struct device*,int,int ) ;
 void* devm_regulator_get (struct device*,char*) ;
 int drm_panel_add (TYPE_1__*) ;
 int drm_panel_init (TYPE_1__*) ;
 int of_find_backlight_by_node (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int seiko_panel_funcs ;

__attribute__((used)) static int seiko_panel_probe(struct device *dev,
     const struct seiko_panel_desc *desc)
{
 struct device_node *backlight;
 struct seiko_panel *panel;
 int err;

 panel = devm_kzalloc(dev, sizeof(*panel), GFP_KERNEL);
 if (!panel)
  return -ENOMEM;

 panel->enabled = 0;
 panel->prepared = 0;
 panel->desc = desc;

 panel->dvdd = devm_regulator_get(dev, "dvdd");
 if (IS_ERR(panel->dvdd))
  return PTR_ERR(panel->dvdd);

 panel->avdd = devm_regulator_get(dev, "avdd");
 if (IS_ERR(panel->avdd))
  return PTR_ERR(panel->avdd);

 backlight = of_parse_phandle(dev->of_node, "backlight", 0);
 if (backlight) {
  panel->backlight = of_find_backlight_by_node(backlight);
  of_node_put(backlight);

  if (!panel->backlight)
   return -EPROBE_DEFER;
 }

 drm_panel_init(&panel->base);
 panel->base.dev = dev;
 panel->base.funcs = &seiko_panel_funcs;

 err = drm_panel_add(&panel->base);
 if (err < 0)
  return err;

 dev_set_drvdata(dev, panel);

 return 0;
}
