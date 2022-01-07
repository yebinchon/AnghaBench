
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int MIPI_DCS_ENTER_SLEEP_MODE ;
 scalar_t__ mipi_dsi_dcs_write (struct mipi_dsi_device*,int ,int *,int ) ;

int mipi_dsi_dcs_enter_sleep_mode(struct mipi_dsi_device *dsi)
{
 ssize_t err;

 err = mipi_dsi_dcs_write(dsi, MIPI_DCS_ENTER_SLEEP_MODE, ((void*)0), 0);
 if (err < 0)
  return err;

 return 0;
}
