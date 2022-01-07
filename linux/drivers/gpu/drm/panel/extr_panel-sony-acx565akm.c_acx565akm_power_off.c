
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acx565akm_panel {int enabled; int reset_gpio; } ;


 int acx565akm_set_display_state (struct acx565akm_panel*,int ) ;
 int acx565akm_set_sleep_mode (struct acx565akm_panel*,int) ;
 int gpiod_set_value (int ,int ) ;
 int msleep (int) ;

__attribute__((used)) static void acx565akm_power_off(struct acx565akm_panel *lcd)
{
 if (!lcd->enabled)
  return;

 acx565akm_set_display_state(lcd, 0);
 acx565akm_set_sleep_mode(lcd, 1);
 lcd->enabled = 0;






 msleep(50);

 gpiod_set_value(lcd->reset_gpio, 0);


 msleep(100);
}
