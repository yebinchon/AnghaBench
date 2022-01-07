
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acx565akm_panel {int enabled; int backlight; int cabc_mode; TYPE_1__* spi; int reset_gpio; } ;
struct TYPE_2__ {int dev; } ;


 int acx565akm_bl_update_status_locked (int ) ;
 int acx565akm_set_cabc_mode (struct acx565akm_panel*,int ) ;
 int acx565akm_set_display_state (struct acx565akm_panel*,int) ;
 int acx565akm_set_sleep_mode (struct acx565akm_panel*,int ) ;
 int dev_dbg (int *,char*) ;
 int gpiod_set_value (int ,int) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int acx565akm_power_on(struct acx565akm_panel *lcd)
{

 msleep(50);

 gpiod_set_value(lcd->reset_gpio, 1);

 if (lcd->enabled) {
  dev_dbg(&lcd->spi->dev, "panel already enabled\n");
  return 0;
 }
 msleep(120);

 acx565akm_set_sleep_mode(lcd, 0);
 lcd->enabled = 1;


 usleep_range(5000, 10000);
 acx565akm_set_display_state(lcd, 1);
 acx565akm_set_cabc_mode(lcd, lcd->cabc_mode);

 return acx565akm_bl_update_status_locked(lcd->backlight);
}
