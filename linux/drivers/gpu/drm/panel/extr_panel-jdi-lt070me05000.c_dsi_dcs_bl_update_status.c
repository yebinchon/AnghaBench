
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mipi_dsi_device {int mode_flags; } ;
struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int MIPI_DSI_MODE_LPM ;
 struct mipi_dsi_device* bl_get_data (struct backlight_device*) ;
 int mipi_dsi_dcs_set_display_brightness (struct mipi_dsi_device*,int ) ;

__attribute__((used)) static int dsi_dcs_bl_update_status(struct backlight_device *bl)
{
 struct mipi_dsi_device *dsi = bl_get_data(bl);
 int ret;

 dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;

 ret = mipi_dsi_dcs_set_display_brightness(dsi, bl->props.brightness);
 if (ret < 0)
  return ret;

 dsi->mode_flags |= MIPI_DSI_MODE_LPM;

 return 0;
}
