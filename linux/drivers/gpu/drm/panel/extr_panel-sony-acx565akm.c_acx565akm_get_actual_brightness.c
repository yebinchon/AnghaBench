
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct acx565akm_panel {int dummy; } ;


 int MIPI_DCS_GET_DISPLAY_BRIGHTNESS ;
 int acx565akm_read (struct acx565akm_panel*,int ,int*,int) ;

__attribute__((used)) static int acx565akm_get_actual_brightness(struct acx565akm_panel *lcd)
{
 u8 bv;

 acx565akm_read(lcd, MIPI_DCS_GET_DISPLAY_BRIGHTNESS, &bv, 1);

 return bv;
}
