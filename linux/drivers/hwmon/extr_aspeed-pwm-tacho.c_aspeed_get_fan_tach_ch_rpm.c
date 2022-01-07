
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct aspeed_pwm_tacho_data {int* fan_tach_ch_source; int* pwm_port_type; int* type_fan_tach_clock_division; int* type_fan_tach_mode; int clk_freq; int regmap; } ;


 int ASPEED_PTCR_RESULT ;
 int ASPEED_PTCR_TRIGGER ;
 int ASPEED_RPM_STATUS_SLEEP_USEC ;
 int BOTH_EDGES ;
 int RESULT_STATUS_MASK ;
 int RESULT_VALUE_MASK ;
 int aspeed_get_fan_tach_ch_measure_period (struct aspeed_pwm_tacho_data*,int) ;
 int regmap_read_poll_timeout (int ,int ,int,int,int ,int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int aspeed_get_fan_tach_ch_rpm(struct aspeed_pwm_tacho_data *priv,
          u8 fan_tach_ch)
{
 u32 raw_data, tach_div, clk_source, msec, usec, val;
 u8 fan_tach_ch_source, type, mode, both;
 int ret;

 regmap_write(priv->regmap, ASPEED_PTCR_TRIGGER, 0);
 regmap_write(priv->regmap, ASPEED_PTCR_TRIGGER, 0x1 << fan_tach_ch);

 fan_tach_ch_source = priv->fan_tach_ch_source[fan_tach_ch];
 type = priv->pwm_port_type[fan_tach_ch_source];

 msec = (1000 / aspeed_get_fan_tach_ch_measure_period(priv, type));
 usec = msec * 1000;

 ret = regmap_read_poll_timeout(
  priv->regmap,
  ASPEED_PTCR_RESULT,
  val,
  (val & RESULT_STATUS_MASK),
  ASPEED_RPM_STATUS_SLEEP_USEC,
  usec);


 if (ret)
  return ret;

 raw_data = val & RESULT_VALUE_MASK;
 tach_div = priv->type_fan_tach_clock_division[type];




 mode = priv->type_fan_tach_mode[type];
 both = (mode & BOTH_EDGES) ? 1 : 0;

 tach_div = (0x4 << both) << (tach_div * 2);
 clk_source = priv->clk_freq;

 if (raw_data == 0)
  return 0;

 return (clk_source * 60) / (2 * raw_data * tach_div);
}
