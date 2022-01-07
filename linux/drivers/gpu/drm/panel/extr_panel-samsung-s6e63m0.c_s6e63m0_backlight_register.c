
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6e63m0 {int bl_dev; struct device* dev; } ;
struct device {int dummy; } ;
struct backlight_properties {int max_brightness; int brightness; int type; } ;


 int BACKLIGHT_RAW ;
 int DRM_DEV_ERROR (struct device*,char*,int) ;
 scalar_t__ IS_ERR (int ) ;
 int MAX_BRIGHTNESS ;
 int PTR_ERR (int ) ;
 int devm_backlight_device_register (struct device*,char*,struct device*,struct s6e63m0*,int *,struct backlight_properties*) ;
 int s6e63m0_backlight_ops ;

__attribute__((used)) static int s6e63m0_backlight_register(struct s6e63m0 *ctx)
{
 struct backlight_properties props = {
  .type = BACKLIGHT_RAW,
  .brightness = MAX_BRIGHTNESS,
  .max_brightness = MAX_BRIGHTNESS
 };
 struct device *dev = ctx->dev;
 int ret = 0;

 ctx->bl_dev = devm_backlight_device_register(dev, "panel", dev, ctx,
           &s6e63m0_backlight_ops,
           &props);
 if (IS_ERR(ctx->bl_dev)) {
  ret = PTR_ERR(ctx->bl_dev);
  DRM_DEV_ERROR(dev, "error registering backlight device (%d)\n",
         ret);
 }

 return ret;
}
