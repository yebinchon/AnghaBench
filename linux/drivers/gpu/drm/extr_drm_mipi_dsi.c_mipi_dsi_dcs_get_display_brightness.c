
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mipi_dsi_device {int dummy; } ;
typedef int ssize_t ;


 int ENODATA ;
 int MIPI_DCS_GET_DISPLAY_BRIGHTNESS ;
 int mipi_dsi_dcs_read (struct mipi_dsi_device*,int ,int *,int) ;

int mipi_dsi_dcs_get_display_brightness(struct mipi_dsi_device *dsi,
     u16 *brightness)
{
 ssize_t err;

 err = mipi_dsi_dcs_read(dsi, MIPI_DCS_GET_DISPLAY_BRIGHTNESS,
    brightness, sizeof(*brightness));
 if (err <= 0) {
  if (err == 0)
   err = -ENODATA;

  return err;
 }

 return 0;
}
