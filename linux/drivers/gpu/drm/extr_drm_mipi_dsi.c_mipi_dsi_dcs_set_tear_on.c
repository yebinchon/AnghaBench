
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int u8 ;
struct mipi_dsi_device {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef enum mipi_dsi_dcs_tear_mode { ____Placeholder_mipi_dsi_dcs_tear_mode } mipi_dsi_dcs_tear_mode ;


 int MIPI_DCS_SET_TEAR_ON ;
 scalar_t__ mipi_dsi_dcs_write (struct mipi_dsi_device*,int ,int*,int) ;

int mipi_dsi_dcs_set_tear_on(struct mipi_dsi_device *dsi,
        enum mipi_dsi_dcs_tear_mode mode)
{
 u8 value = mode;
 ssize_t err;

 err = mipi_dsi_dcs_write(dsi, MIPI_DCS_SET_TEAR_ON, &value,
     sizeof(value));
 if (err < 0)
  return err;

 return 0;
}
