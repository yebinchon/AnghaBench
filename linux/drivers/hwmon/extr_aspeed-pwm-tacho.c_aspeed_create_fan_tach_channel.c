
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct aspeed_pwm_tacho_data {int* fan_tach_present; int* fan_tach_ch_source; int regmap; } ;


 int aspeed_set_fan_tach_ch_enable (int ,int,int) ;
 int aspeed_set_fan_tach_ch_source (int ,int,int) ;

__attribute__((used)) static void aspeed_create_fan_tach_channel(struct aspeed_pwm_tacho_data *priv,
        u8 *fan_tach_ch,
        int count,
        u8 pwm_source)
{
 u8 val, index;

 for (val = 0; val < count; val++) {
  index = fan_tach_ch[val];
  aspeed_set_fan_tach_ch_enable(priv->regmap, index, 1);
  priv->fan_tach_present[index] = 1;
  priv->fan_tach_ch_source[index] = pwm_source;
  aspeed_set_fan_tach_ch_source(priv->regmap, index, pwm_source);
 }
}
