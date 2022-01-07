
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct aspeed_pwm_tacho_data {int* pwm_present; int * pwm_port_fan_ctrl; int regmap; int * pwm_port_type; } ;


 int INIT_FAN_CTRL ;
 int TYPEM ;
 int aspeed_set_pwm_port_enable (int ,size_t,int) ;
 int aspeed_set_pwm_port_fan_ctrl (struct aspeed_pwm_tacho_data*,size_t,int ) ;
 int aspeed_set_pwm_port_type (int ,size_t,int ) ;

__attribute__((used)) static void aspeed_create_pwm_port(struct aspeed_pwm_tacho_data *priv,
       u8 pwm_port)
{
 aspeed_set_pwm_port_enable(priv->regmap, pwm_port, 1);
 priv->pwm_present[pwm_port] = 1;

 priv->pwm_port_type[pwm_port] = TYPEM;
 aspeed_set_pwm_port_type(priv->regmap, pwm_port, TYPEM);

 priv->pwm_port_fan_ctrl[pwm_port] = INIT_FAN_CTRL;
 aspeed_set_pwm_port_fan_ctrl(priv, pwm_port, INIT_FAN_CTRL);
}
