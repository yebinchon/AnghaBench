
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rad_panel {int prepared; } ;
struct mipi_dsi_device {int mode_flags; } ;
struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int MIPI_DSI_MODE_LPM ;
 struct mipi_dsi_device* bl_get_data (struct backlight_device*) ;
 int mipi_dsi_dcs_set_display_brightness (struct mipi_dsi_device*,int ) ;
 struct rad_panel* mipi_dsi_get_drvdata (struct mipi_dsi_device*) ;

__attribute__((used)) static int rad_bl_update_status(struct backlight_device *bl)
{
 struct mipi_dsi_device *dsi = bl_get_data(bl);
 struct rad_panel *rad = mipi_dsi_get_drvdata(dsi);
 int ret = 0;

 if (!rad->prepared)
  return 0;

 dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;

 ret = mipi_dsi_dcs_set_display_brightness(dsi, bl->props.brightness);
 if (ret < 0)
  return ret;

 return 0;
}
