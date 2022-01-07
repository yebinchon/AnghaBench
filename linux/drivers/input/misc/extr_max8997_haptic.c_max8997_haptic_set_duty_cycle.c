
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max8997_haptic {scalar_t__ mode; int pwm_period; int level; int internal_mode_pattern; int client; int pwm; } ;


 scalar_t__ MAX8997_EXTERNAL_MODE ;
 int MAX8997_HAPTIC_REG_SIGPWMDC1 ;
 int MAX8997_HAPTIC_REG_SIGPWMDC2 ;
 int MAX8997_HAPTIC_REG_SIGPWMDC3 ;
 int MAX8997_HAPTIC_REG_SIGPWMDC4 ;
 int max8997_write_reg (int ,int ,int) ;
 int pwm_config (int ,unsigned int,int) ;

__attribute__((used)) static int max8997_haptic_set_duty_cycle(struct max8997_haptic *chip)
{
 int ret = 0;

 if (chip->mode == MAX8997_EXTERNAL_MODE) {
  unsigned int duty = chip->pwm_period * chip->level / 100;
  ret = pwm_config(chip->pwm, duty, chip->pwm_period);
 } else {
  int i;
  u8 duty_index = 0;

  for (i = 0; i <= 64; i++) {
   if (chip->level <= i * 100 / 64) {
    duty_index = i;
    break;
   }
  }
  switch (chip->internal_mode_pattern) {
  case 0:
   max8997_write_reg(chip->client,
    MAX8997_HAPTIC_REG_SIGPWMDC1, duty_index);
   break;
  case 1:
   max8997_write_reg(chip->client,
    MAX8997_HAPTIC_REG_SIGPWMDC2, duty_index);
   break;
  case 2:
   max8997_write_reg(chip->client,
    MAX8997_HAPTIC_REG_SIGPWMDC3, duty_index);
   break;
  case 3:
   max8997_write_reg(chip->client,
    MAX8997_HAPTIC_REG_SIGPWMDC4, duty_index);
   break;
  default:
   break;
  }
 }
 return ret;
}
