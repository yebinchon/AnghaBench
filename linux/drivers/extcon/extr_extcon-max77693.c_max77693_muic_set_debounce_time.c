
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max77693_muic_info {int dev; TYPE_1__* max77693; } ;
typedef enum max77693_muic_adc_debounce_time { ____Placeholder_max77693_muic_adc_debounce_time } max77693_muic_adc_debounce_time ;
struct TYPE_2__ {int regmap_muic; } ;






 int EINVAL ;
 int MAX77693_CONTROL3_ADCDBSET_SHIFT ;
 int MAX77693_MUIC_REG_CTRL3 ;
 int dev_err (int ,char*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int max77693_muic_set_debounce_time(struct max77693_muic_info *info,
  enum max77693_muic_adc_debounce_time time)
{
 int ret;

 switch (time) {
 case 128:
 case 131:
 case 130:
 case 129:





  ret = regmap_write(info->max77693->regmap_muic,
      MAX77693_MUIC_REG_CTRL3,
      time << MAX77693_CONTROL3_ADCDBSET_SHIFT);
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
