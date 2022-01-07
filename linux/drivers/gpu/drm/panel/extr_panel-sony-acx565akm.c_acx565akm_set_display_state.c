
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acx565akm_panel {int dummy; } ;


 int MIPI_DCS_SET_DISPLAY_OFF ;
 int MIPI_DCS_SET_DISPLAY_ON ;
 int acx565akm_cmd (struct acx565akm_panel*,int) ;

__attribute__((used)) static void acx565akm_set_display_state(struct acx565akm_panel *lcd,
     int enabled)
{
 int cmd = enabled ? MIPI_DCS_SET_DISPLAY_ON : MIPI_DCS_SET_DISPLAY_OFF;

 acx565akm_cmd(lcd, cmd);
}
