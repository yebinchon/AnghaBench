
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mipi_dsi_device {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int payload ;


 int MIPI_DCS_SET_PAGE_ADDRESS ;
 scalar_t__ mipi_dsi_dcs_write (struct mipi_dsi_device*,int ,int*,int) ;

int mipi_dsi_dcs_set_page_address(struct mipi_dsi_device *dsi, u16 start,
      u16 end)
{
 u8 payload[4] = { start >> 8, start & 0xff, end >> 8, end & 0xff };
 ssize_t err;

 err = mipi_dsi_dcs_write(dsi, MIPI_DCS_SET_PAGE_ADDRESS, payload,
     sizeof(payload));
 if (err < 0)
  return err;

 return 0;
}
