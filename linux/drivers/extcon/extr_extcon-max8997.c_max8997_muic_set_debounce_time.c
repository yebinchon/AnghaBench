
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8997_muic_info {int dev; int muic; } ;
typedef enum max8997_muic_adc_debounce_time { ____Placeholder_max8997_muic_adc_debounce_time } max8997_muic_adc_debounce_time ;






 int CONTROL3_ADCDBSET_MASK ;
 int CONTROL3_ADCDBSET_SHIFT ;
 int EINVAL ;
 int MAX8997_MUIC_REG_CONTROL3 ;
 int dev_err (int ,char*) ;
 int max8997_update_reg (int ,int ,int,int ) ;

__attribute__((used)) static int max8997_muic_set_debounce_time(struct max8997_muic_info *info,
  enum max8997_muic_adc_debounce_time time)
{
 int ret;

 switch (time) {
 case 131:
 case 130:
 case 129:
 case 128:
  ret = max8997_update_reg(info->muic,
       MAX8997_MUIC_REG_CONTROL3,
       time << CONTROL3_ADCDBSET_SHIFT,
       CONTROL3_ADCDBSET_MASK);
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
