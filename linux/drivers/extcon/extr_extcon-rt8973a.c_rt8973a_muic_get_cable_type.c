
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt8973a_muic_info {int dev; int regmap; } ;



 int RT8973A_MUIC_ADC_TA ;
 int RT8973A_MUIC_ADC_USB ;
 int RT8973A_REG_ADC ;
 unsigned int RT8973A_REG_ADC_MASK ;
 int RT8973A_REG_DEV1 ;
 unsigned int RT8973A_REG_DEV1_DCPORT_MASK ;
 unsigned int RT8973A_REG_DEV1_USB_MASK ;
 int dev_err (int ,char*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int rt8973a_muic_get_cable_type(struct rt8973a_muic_info *info)
{
 unsigned int adc, dev1;
 int ret, cable_type;


 ret = regmap_read(info->regmap, RT8973A_REG_ADC, &adc);
 if (ret) {
  dev_err(info->dev, "failed to read ADC register\n");
  return ret;
 }
 cable_type = adc & RT8973A_REG_ADC_MASK;


 ret = regmap_read(info->regmap, RT8973A_REG_DEV1, &dev1);
 if (ret) {
  dev_err(info->dev, "failed to read DEV1 register\n");
  return ret;
 }

 switch (adc) {
 case 128:
  if (dev1 & RT8973A_REG_DEV1_USB_MASK)
   cable_type = RT8973A_MUIC_ADC_USB;
  else if (dev1 & RT8973A_REG_DEV1_DCPORT_MASK)
   cable_type = RT8973A_MUIC_ADC_TA;
  else
   cable_type = 128;
  break;
 default:
  break;
 }

 return cable_type;
}
