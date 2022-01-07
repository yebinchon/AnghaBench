
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm5502_muic_info {int dev; int regmap; } ;


 unsigned int EINVAL ;
 unsigned int SM5502_MUIC_ADC_OPEN_TA ;
 unsigned int SM5502_MUIC_ADC_OPEN_USB ;
 unsigned int SM5502_MUIC_ADC_OPEN_USB_OTG ;
 int SM5502_REG_ADC ;
 unsigned int SM5502_REG_ADC_MASK ;
 int SM5502_REG_DEV_TYPE1 ;



 int dev_dbg (int ,char*,unsigned int) ;
 int dev_err (int ,char*,...) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static unsigned int sm5502_muic_get_cable_type(struct sm5502_muic_info *info)
{
 unsigned int cable_type = -1, adc, dev_type1;
 int ret;


 ret = regmap_read(info->regmap, SM5502_REG_ADC, &adc);
 if (ret) {
  dev_err(info->dev, "failed to read ADC register\n");
  return ret;
 }





 cable_type = adc & SM5502_REG_ADC_MASK;
 if (cable_type == 155)
  return 155;

 switch (cable_type) {
 case 155:
 case 135:
 case 149:
 case 148:
 case 147:
 case 146:
 case 145:
 case 144:
 case 143:
 case 142:
 case 141:
 case 152:
 case 151:
 case 150:
 case 140:
 case 139:
 case 138:
 case 137:
 case 136:
 case 161:
 case 153:
 case 134:
 case 131:
 case 133:
 case 158:
 case 156:
 case 160:
 case 132:
 case 159:
 case 157:
  break;
 case 162:






  break;
 case 154:
  ret = regmap_read(info->regmap, SM5502_REG_DEV_TYPE1,
      &dev_type1);
  if (ret) {
   dev_err(info->dev, "failed to read DEV_TYPE1 reg\n");
   return ret;
  }

  switch (dev_type1) {
  case 128:
   cable_type = SM5502_MUIC_ADC_OPEN_USB;
   break;
  case 130:
   cable_type = SM5502_MUIC_ADC_OPEN_TA;
   break;
  case 129:
   cable_type = SM5502_MUIC_ADC_OPEN_USB_OTG;
   break;
  default:
   dev_dbg(info->dev,
    "cannot identify the cable type: adc(0x%x)\n",
    adc);
   return -EINVAL;
  };
  break;
 default:
  dev_err(info->dev,
   "failed to identify the cable type: adc(0x%x)\n", adc);
  return -EINVAL;
 };

 return cable_type;
}
