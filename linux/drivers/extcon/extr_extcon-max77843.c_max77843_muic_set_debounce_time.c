
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77843_muic_info {int dev; struct max77693_dev* max77843; } ;
struct max77693_dev {int regmap_muic; } ;
typedef enum max77843_muic_adc_debounce_time { ____Placeholder_max77843_muic_adc_debounce_time } max77843_muic_adc_debounce_time ;


 int EINVAL ;




 int MAX77843_MUIC_CONTROL4_ADCDBSET_MASK ;
 int MAX77843_MUIC_CONTROL4_ADCDBSET_SHIFT ;
 int MAX77843_MUIC_REG_CONTROL4 ;
 int dev_err (int ,char*) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int max77843_muic_set_debounce_time(struct max77843_muic_info *info,
  enum max77843_muic_adc_debounce_time time)
{
 struct max77693_dev *max77843 = info->max77843;
 int ret;

 switch (time) {
 case 128:
 case 131:
 case 130:
 case 129:
  ret = regmap_update_bits(max77843->regmap_muic,
    MAX77843_MUIC_REG_CONTROL4,
    MAX77843_MUIC_CONTROL4_ADCDBSET_MASK,
    time << MAX77843_MUIC_CONTROL4_ADCDBSET_SHIFT);
  if (ret < 0) {
   dev_err(info->dev, "Cannot write MUIC regmap\n");
   return ret;
  }
  break;
 default:
  dev_err(info->dev, "Invalid ADC debounce time\n");
  return -EINVAL;
 }

 return 0;
}
