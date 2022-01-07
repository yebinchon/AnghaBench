
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st7701_panel_desc {int num_supplies; scalar_t__ panel_sleep_delay; int * supply_names; int lanes; int format; int flags; } ;
struct TYPE_5__ {int * dev; int * funcs; } ;
struct st7701 {struct st7701_panel_desc const* desc; struct mipi_dsi_device* dsi; TYPE_1__ panel; scalar_t__ sleep_delay; int backlight; int reset; TYPE_3__* supplies; } ;
struct mipi_dsi_device {int dev; int lanes; int format; int mode_flags; } ;
struct TYPE_6__ {int supply; } ;


 int DRM_DEV_ERROR (int *,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_gpiod_get (int *,char*,int ) ;
 TYPE_3__* devm_kcalloc (int *,int,int,int ) ;
 struct st7701* devm_kzalloc (int *,int,int ) ;
 int devm_of_find_backlight (int *) ;
 int devm_regulator_bulk_get (int *,int,TYPE_3__*) ;
 int drm_panel_add (TYPE_1__*) ;
 int drm_panel_init (TYPE_1__*) ;
 int mipi_dsi_attach (struct mipi_dsi_device*) ;
 int mipi_dsi_set_drvdata (struct mipi_dsi_device*,struct st7701*) ;
 struct st7701_panel_desc* of_device_get_match_data (int *) ;
 int st7701_funcs ;

__attribute__((used)) static int st7701_dsi_probe(struct mipi_dsi_device *dsi)
{
 const struct st7701_panel_desc *desc;
 struct st7701 *st7701;
 int ret, i;

 st7701 = devm_kzalloc(&dsi->dev, sizeof(*st7701), GFP_KERNEL);
 if (!st7701)
  return -ENOMEM;

 desc = of_device_get_match_data(&dsi->dev);
 dsi->mode_flags = desc->flags;
 dsi->format = desc->format;
 dsi->lanes = desc->lanes;

 st7701->supplies = devm_kcalloc(&dsi->dev, desc->num_supplies,
     sizeof(*st7701->supplies),
     GFP_KERNEL);
 if (!st7701->supplies)
  return -ENOMEM;

 for (i = 0; i < desc->num_supplies; i++)
  st7701->supplies[i].supply = desc->supply_names[i];

 ret = devm_regulator_bulk_get(&dsi->dev, desc->num_supplies,
          st7701->supplies);
 if (ret < 0)
  return ret;

 st7701->reset = devm_gpiod_get(&dsi->dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(st7701->reset)) {
  DRM_DEV_ERROR(&dsi->dev, "Couldn't get our reset GPIO\n");
  return PTR_ERR(st7701->reset);
 }

 st7701->backlight = devm_of_find_backlight(&dsi->dev);
 if (IS_ERR(st7701->backlight))
  return PTR_ERR(st7701->backlight);

 drm_panel_init(&st7701->panel);
 st7701->sleep_delay = 120 + desc->panel_sleep_delay;
 st7701->panel.funcs = &st7701_funcs;
 st7701->panel.dev = &dsi->dev;

 ret = drm_panel_add(&st7701->panel);
 if (ret < 0)
  return ret;

 mipi_dsi_set_drvdata(dsi, st7701);
 st7701->dsi = dsi;
 st7701->desc = desc;

 return mipi_dsi_attach(dsi);
}
