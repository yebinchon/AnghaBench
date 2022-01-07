
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct mipi_dsi_device {struct device dev; } ;
struct backlight_properties {int brightness; int max_brightness; int type; } ;
struct backlight_device {int dummy; } ;
typedef int props ;


 int BACKLIGHT_RAW ;
 int dev_name (struct device*) ;
 struct backlight_device* devm_backlight_device_register (struct device*,int ,struct device*,struct mipi_dsi_device*,int *,struct backlight_properties*) ;
 int dsi_bl_ops ;
 int memset (struct backlight_properties*,int ,int) ;

__attribute__((used)) static struct backlight_device *
drm_panel_create_dsi_backlight(struct mipi_dsi_device *dsi)
{
 struct device *dev = &dsi->dev;
 struct backlight_properties props;

 memset(&props, 0, sizeof(props));
 props.type = BACKLIGHT_RAW;
 props.brightness = 255;
 props.max_brightness = 255;

 return devm_backlight_device_register(dev, dev_name(dev), dev, dsi,
           &dsi_bl_ops, &props);
}
