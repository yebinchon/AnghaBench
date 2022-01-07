
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mipi_dsi_device {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int format ;


 int MIPI_DCS_SET_PIXEL_FORMAT ;
 scalar_t__ mipi_dsi_dcs_write (struct mipi_dsi_device*,int ,int *,int) ;

int mipi_dsi_dcs_set_pixel_format(struct mipi_dsi_device *dsi, u8 format)
{
 ssize_t err;

 err = mipi_dsi_dcs_write(dsi, MIPI_DCS_SET_PIXEL_FORMAT, &format,
     sizeof(format));
 if (err < 0)
  return err;

 return 0;
}
