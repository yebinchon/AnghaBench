
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aspeed_pwm_tacho_data {int rst; } ;


 int reset_control_assert (int ) ;

__attribute__((used)) static void aspeed_pwm_tacho_remove(void *data)
{
 struct aspeed_pwm_tacho_data *priv = data;

 reset_control_assert(priv->rst);
}
