
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mipi_dbi {int dummy; } ;


 int DCS_POWER_MODE_DISPLAY ;
 int DCS_POWER_MODE_DISPLAY_NORMAL_MODE ;
 int DCS_POWER_MODE_RESERVED_MASK ;
 int DCS_POWER_MODE_SLEEP_MODE ;
 int DRM_DEBUG_DRIVER (char*) ;
 int MIPI_DCS_GET_POWER_MODE ;
 scalar_t__ mipi_dbi_command_read (struct mipi_dbi*,int ,int*) ;

bool mipi_dbi_display_is_on(struct mipi_dbi *dbi)
{
 u8 val;

 if (mipi_dbi_command_read(dbi, MIPI_DCS_GET_POWER_MODE, &val))
  return 0;

 val &= ~DCS_POWER_MODE_RESERVED_MASK;


 if (val != (DCS_POWER_MODE_DISPLAY |
     DCS_POWER_MODE_DISPLAY_NORMAL_MODE | DCS_POWER_MODE_SLEEP_MODE))
  return 0;

 DRM_DEBUG_DRIVER("Display is ON\n");

 return 1;
}
