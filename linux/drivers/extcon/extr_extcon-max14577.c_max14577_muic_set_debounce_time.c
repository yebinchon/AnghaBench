
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct max14577_muic_info {int dev; TYPE_1__* max14577; } ;
typedef enum max14577_muic_adc_debounce_time { ____Placeholder_max14577_muic_adc_debounce_time } max14577_muic_adc_debounce_time ;
struct TYPE_2__ {int regmap; } ;






 int CTRL3_ADCDBSET_MASK ;
 int CTRL3_ADCDBSET_SHIFT ;
 int EINVAL ;
 int MAX14577_MUIC_REG_CONTROL3 ;
 int dev_err (int ,char*) ;
 int max14577_update_reg (int ,int ,int ,int) ;

__attribute__((used)) static int max14577_muic_set_debounce_time(struct max14577_muic_info *info,
  enum max14577_muic_adc_debounce_time time)
{
 u8 ret;

 switch (time) {
 case 128:
 case 131:
 case 130:
 case 129:
  ret = max14577_update_reg(info->max14577->regmap,
       MAX14577_MUIC_REG_CONTROL3,
       CTRL3_ADCDBSET_MASK,
       time << CTRL3_ADCDBSET_SHIFT);
  if (ret) {
   dev_err(info->dev, "failed to set ADC debounce time\n");
   return ret;
  }
  break;
 default:
  dev_err(info->dev, "invalid ADC debounce time\n");
  return -EINVAL;
 }

 return 0;
}
