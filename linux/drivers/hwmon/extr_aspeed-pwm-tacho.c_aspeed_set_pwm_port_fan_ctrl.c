
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct aspeed_pwm_tacho_data {int* type_pwm_clock_unit; size_t* pwm_port_type; int regmap; } ;


 size_t PWM_MAX ;
 int aspeed_set_pwm_port_duty_rising_falling (int ,size_t,int ,int) ;
 int aspeed_set_pwm_port_enable (int ,size_t,int) ;

__attribute__((used)) static void aspeed_set_pwm_port_fan_ctrl(struct aspeed_pwm_tacho_data *priv,
      u8 index, u8 fan_ctrl)
{
 u16 period, dc_time_on;

 period = priv->type_pwm_clock_unit[priv->pwm_port_type[index]];
 period += 1;
 dc_time_on = (fan_ctrl * period) / PWM_MAX;

 if (dc_time_on == 0) {
  aspeed_set_pwm_port_enable(priv->regmap, index, 0);
 } else {
  if (dc_time_on == period)
   dc_time_on = 0;

  aspeed_set_pwm_port_duty_rising_falling(priv->regmap, index, 0,
       dc_time_on);
  aspeed_set_pwm_port_enable(priv->regmap, index, 1);
 }
}
