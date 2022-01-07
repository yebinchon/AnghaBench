
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {struct device* dev; int * funcs; } ;
struct rad_panel {TYPE_1__ panel; int backlight; int reset; struct mipi_dsi_device* dsi; } ;
struct device {struct device_node* of_node; } ;
struct mipi_dsi_device {int mode_flags; int lanes; int format; struct device dev; } ;
struct device_node {int dummy; } ;
struct backlight_properties {int brightness; int max_brightness; int type; } ;
typedef int bl_props ;


 int BACKLIGHT_RAW ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int MIPI_DSI_CLOCK_NON_CONTINUOUS ;
 int MIPI_DSI_FMT_RGB888 ;
 int MIPI_DSI_MODE_VIDEO ;
 int MIPI_DSI_MODE_VIDEO_BURST ;
 int MIPI_DSI_MODE_VIDEO_HSE ;
 int MIPI_DSI_MODE_VIDEO_SYNC_PULSE ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int) ;
 int dev_name (struct device*) ;
 int dev_set_drvdata (struct device*,struct rad_panel*) ;
 int dev_warn (struct device*,char*,int) ;
 int devm_backlight_device_register (struct device*,int ,struct device*,struct mipi_dsi_device*,int *,struct backlight_properties*) ;
 int devm_gpiod_get_optional (struct device*,char*,int ) ;
 struct rad_panel* devm_kzalloc (struct device*,int,int ) ;
 int drm_panel_add (TYPE_1__*) ;
 int drm_panel_init (TYPE_1__*) ;
 int drm_panel_remove (TYPE_1__*) ;
 int memset (struct backlight_properties*,int ,int) ;
 int mipi_dsi_attach (struct mipi_dsi_device*) ;
 int mipi_dsi_set_drvdata (struct mipi_dsi_device*,struct rad_panel*) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int rad_bl_ops ;
 int rad_init_regulators (struct rad_panel*) ;
 int rad_panel_funcs ;

__attribute__((used)) static int rad_panel_probe(struct mipi_dsi_device *dsi)
{
 struct device *dev = &dsi->dev;
 struct device_node *np = dev->of_node;
 struct rad_panel *panel;
 struct backlight_properties bl_props;
 int ret;
 u32 video_mode;

 panel = devm_kzalloc(&dsi->dev, sizeof(*panel), GFP_KERNEL);
 if (!panel)
  return -ENOMEM;

 mipi_dsi_set_drvdata(dsi, panel);

 panel->dsi = dsi;

 dsi->format = MIPI_DSI_FMT_RGB888;
 dsi->mode_flags = MIPI_DSI_MODE_VIDEO_HSE | MIPI_DSI_MODE_VIDEO |
      MIPI_DSI_CLOCK_NON_CONTINUOUS;

 ret = of_property_read_u32(np, "video-mode", &video_mode);
 if (!ret) {
  switch (video_mode) {
  case 0:

   dsi->mode_flags |= MIPI_DSI_MODE_VIDEO_BURST;
   break;
  case 1:

   break;
  case 2:

   dsi->mode_flags |= MIPI_DSI_MODE_VIDEO_SYNC_PULSE;
   break;
  default:
   dev_warn(dev, "invalid video mode %d\n", video_mode);
   break;
  }
 }

 ret = of_property_read_u32(np, "dsi-lanes", &dsi->lanes);
 if (ret) {
  dev_err(dev, "Failed to get dsi-lanes property (%d)\n", ret);
  return ret;
 }

 panel->reset = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(panel->reset))
  return PTR_ERR(panel->reset);

 memset(&bl_props, 0, sizeof(bl_props));
 bl_props.type = BACKLIGHT_RAW;
 bl_props.brightness = 255;
 bl_props.max_brightness = 255;

 panel->backlight = devm_backlight_device_register(dev, dev_name(dev),
         dev, dsi, &rad_bl_ops,
         &bl_props);
 if (IS_ERR(panel->backlight)) {
  ret = PTR_ERR(panel->backlight);
  dev_err(dev, "Failed to register backlight (%d)\n", ret);
  return ret;
 }

 ret = rad_init_regulators(panel);
 if (ret)
  return ret;

 drm_panel_init(&panel->panel);
 panel->panel.funcs = &rad_panel_funcs;
 panel->panel.dev = dev;
 dev_set_drvdata(dev, panel);

 ret = drm_panel_add(&panel->panel);
 if (ret)
  return ret;

 ret = mipi_dsi_attach(dsi);
 if (ret)
  drm_panel_remove(&panel->panel);

 return ret;
}
