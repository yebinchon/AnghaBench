
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {struct device* dev; int * funcs; } ;
struct wuxga_nt_panel {TYPE_2__* backlight; TYPE_3__ base; TYPE_1__* dsi; int supply; int * mode; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {struct device dev; } ;


 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int default_mode ;
 int devm_regulator_get (struct device*,char*) ;
 int drm_panel_add (TYPE_3__*) ;
 int drm_panel_init (TYPE_3__*) ;
 TYPE_2__* of_find_backlight_by_node (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (int ,char*,int ) ;
 int put_device (int *) ;
 int wuxga_nt_panel_funcs ;

__attribute__((used)) static int wuxga_nt_panel_add(struct wuxga_nt_panel *wuxga_nt)
{
 struct device *dev = &wuxga_nt->dsi->dev;
 struct device_node *np;
 int ret;

 wuxga_nt->mode = &default_mode;

 wuxga_nt->supply = devm_regulator_get(dev, "power");
 if (IS_ERR(wuxga_nt->supply))
  return PTR_ERR(wuxga_nt->supply);

 np = of_parse_phandle(dev->of_node, "backlight", 0);
 if (np) {
  wuxga_nt->backlight = of_find_backlight_by_node(np);
  of_node_put(np);

  if (!wuxga_nt->backlight)
   return -EPROBE_DEFER;
 }

 drm_panel_init(&wuxga_nt->base);
 wuxga_nt->base.funcs = &wuxga_nt_panel_funcs;
 wuxga_nt->base.dev = &wuxga_nt->dsi->dev;

 ret = drm_panel_add(&wuxga_nt->base);
 if (ret < 0)
  goto put_backlight;

 return 0;

put_backlight:
 if (wuxga_nt->backlight)
  put_device(&wuxga_nt->backlight->dev);

 return ret;
}
