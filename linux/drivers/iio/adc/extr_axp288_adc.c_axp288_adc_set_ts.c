
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp288_adc_info {int regmap; int ts_enabled; } ;


 int AXP288_ADC_TS_CURRENT_ON_OFF_MASK ;
 unsigned int AXP288_ADC_TS_CURRENT_ON_ONDEMAND ;
 int AXP288_ADC_TS_PIN_CTRL ;
 unsigned long AXP288_GP_ADC_H ;
 int regmap_update_bits (int ,int ,int ,unsigned int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int axp288_adc_set_ts(struct axp288_adc_info *info,
        unsigned int mode, unsigned long address)
{
 int ret;


 if (!info->ts_enabled)
  return 0;


 if (address != AXP288_GP_ADC_H)
  return 0;

 ret = regmap_update_bits(info->regmap, AXP288_ADC_TS_PIN_CTRL,
     AXP288_ADC_TS_CURRENT_ON_OFF_MASK, mode);
 if (ret)
  return ret;


 if (mode == AXP288_ADC_TS_CURRENT_ON_ONDEMAND)
  usleep_range(6000, 10000);

 return 0;
}
