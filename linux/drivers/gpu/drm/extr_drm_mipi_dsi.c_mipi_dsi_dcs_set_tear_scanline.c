
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mipi_dsi_device {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int payload ;


 int MIPI_DCS_SET_TEAR_SCANLINE ;
 scalar_t__ mipi_dsi_generic_write (struct mipi_dsi_device*,int*,int) ;

int mipi_dsi_dcs_set_tear_scanline(struct mipi_dsi_device *dsi, u16 scanline)
{
 u8 payload[3] = { MIPI_DCS_SET_TEAR_SCANLINE, scanline >> 8,
     scanline & 0xff };
 ssize_t err;

 err = mipi_dsi_generic_write(dsi, payload, sizeof(payload));
 if (err < 0)
  return err;

 return 0;
}
