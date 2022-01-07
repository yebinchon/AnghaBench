
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct td043mtea1_panel {int powered_on; int vcc_reg; int reset_gpio; } ;


 int TPO_R03_EN_PWM ;
 int TPO_R03_VAL_STANDBY ;
 int gpiod_set_value (int ,int) ;
 int msleep (int) ;
 int regulator_disable (int ) ;
 int td043mtea1_write (struct td043mtea1_panel*,int,int) ;

__attribute__((used)) static void td043mtea1_power_off(struct td043mtea1_panel *lcd)
{
 if (!lcd->powered_on)
  return;

 td043mtea1_write(lcd, 3, TPO_R03_VAL_STANDBY | TPO_R03_EN_PWM);

 gpiod_set_value(lcd->reset_gpio, 1);


 msleep(50);

 td043mtea1_write(lcd, 3, TPO_R03_VAL_STANDBY);

 regulator_disable(lcd->vcc_reg);

 lcd->powered_on = 0;
}
