
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {scalar_t__ driver_data; } ;
struct axp288_adc_info {int ts_enabled; int regmap; } ;


 int AXP20X_ADC_EN1 ;
 uintptr_t AXP288_ADC_EN_MASK ;
 uintptr_t AXP288_ADC_TS_BIAS_MASK ;
 uintptr_t AXP288_ADC_TS_CURRENT_OFF ;
 uintptr_t AXP288_ADC_TS_CURRENT_ON ;
 uintptr_t AXP288_ADC_TS_CURRENT_ON_OFF_MASK ;
 int AXP288_ADC_TS_ENABLE ;
 int AXP288_ADC_TS_PIN_CTRL ;
 int axp288_adc_ts_bias_override ;
 struct dmi_system_id* dmi_first_match (int ) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,uintptr_t,uintptr_t) ;

__attribute__((used)) static int axp288_adc_initialize(struct axp288_adc_info *info)
{
 const struct dmi_system_id *bias_override;
 int ret, adc_enable_val;

 bias_override = dmi_first_match(axp288_adc_ts_bias_override);
 if (bias_override) {
  ret = regmap_update_bits(info->regmap, AXP288_ADC_TS_PIN_CTRL,
      AXP288_ADC_TS_BIAS_MASK,
      (uintptr_t)bias_override->driver_data);
  if (ret)
   return ret;
 }





 ret = regmap_read(info->regmap, AXP20X_ADC_EN1, &adc_enable_val);
 if (ret)
  return ret;

 if (adc_enable_val & AXP288_ADC_TS_ENABLE) {
  info->ts_enabled = 1;
  ret = regmap_update_bits(info->regmap, AXP288_ADC_TS_PIN_CTRL,
      AXP288_ADC_TS_CURRENT_ON_OFF_MASK,
      AXP288_ADC_TS_CURRENT_ON);
 } else {
  info->ts_enabled = 0;
  ret = regmap_update_bits(info->regmap, AXP288_ADC_TS_PIN_CTRL,
      AXP288_ADC_TS_CURRENT_ON_OFF_MASK,
      AXP288_ADC_TS_CURRENT_OFF);
 }
 if (ret)
  return ret;


 return regmap_update_bits(info->regmap, AXP20X_ADC_EN1,
      AXP288_ADC_EN_MASK, AXP288_ADC_EN_MASK);
}
