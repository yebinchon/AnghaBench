
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct td043mtea1_panel {int powered_on; int mode; int reset_gpio; int vcc_reg; } ;


 int TPO_R02_MODE (int ) ;
 int TPO_R02_NCLK_RISING ;
 int TPO_R03_VAL_NORMAL ;
 int gpiod_set_value (int ,int ) ;
 int msleep (int) ;
 int regulator_enable (int ) ;
 int td043mtea1_write (struct td043mtea1_panel*,int,int) ;
 int td043mtea1_write_gamma (struct td043mtea1_panel*) ;
 int td043mtea1_write_mirror (struct td043mtea1_panel*) ;

__attribute__((used)) static int td043mtea1_power_on(struct td043mtea1_panel *lcd)
{
 int ret;

 if (lcd->powered_on)
  return 0;

 ret = regulator_enable(lcd->vcc_reg);
 if (ret < 0)
  return ret;


 msleep(160);

 gpiod_set_value(lcd->reset_gpio, 0);

 td043mtea1_write(lcd, 2, TPO_R02_MODE(lcd->mode) | TPO_R02_NCLK_RISING);
 td043mtea1_write(lcd, 3, TPO_R03_VAL_NORMAL);
 td043mtea1_write(lcd, 0x20, 0xf0);
 td043mtea1_write(lcd, 0x21, 0xf0);
 td043mtea1_write_mirror(lcd);
 td043mtea1_write_gamma(lcd);

 lcd->powered_on = 1;

 return 0;
}
