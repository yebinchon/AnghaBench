
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aspeed_pwm_tacho_data {int regmap; int * type_fan_tach_mode; int * type_fan_tach_unit; int * type_fan_tach_clock_division; int * type_pwm_clock_unit; int * type_pwm_clock_division_l; int * type_pwm_clock_division_h; } ;


 int M_PWM_DIV_H ;
 int M_PWM_DIV_L ;
 int M_PWM_PERIOD ;
 int M_TACH_CLK_DIV ;
 int M_TACH_MODE ;
 int M_TACH_UNIT ;
 size_t TYPEM ;
 int aspeed_set_pwm_clock_values (int ,size_t,int ,int ,int ) ;
 int aspeed_set_tacho_type_enable (int ,size_t,int) ;
 int aspeed_set_tacho_type_values (int ,size_t,int ,int ,int ) ;

__attribute__((used)) static void aspeed_create_type(struct aspeed_pwm_tacho_data *priv)
{
 priv->type_pwm_clock_division_h[TYPEM] = M_PWM_DIV_H;
 priv->type_pwm_clock_division_l[TYPEM] = M_PWM_DIV_L;
 priv->type_pwm_clock_unit[TYPEM] = M_PWM_PERIOD;
 aspeed_set_pwm_clock_values(priv->regmap, TYPEM, M_PWM_DIV_H,
        M_PWM_DIV_L, M_PWM_PERIOD);
 aspeed_set_tacho_type_enable(priv->regmap, TYPEM, 1);
 priv->type_fan_tach_clock_division[TYPEM] = M_TACH_CLK_DIV;
 priv->type_fan_tach_unit[TYPEM] = M_TACH_UNIT;
 priv->type_fan_tach_mode[TYPEM] = M_TACH_MODE;
 aspeed_set_tacho_type_values(priv->regmap, TYPEM, M_TACH_MODE,
         M_TACH_UNIT, M_TACH_CLK_DIV);
}
