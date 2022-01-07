
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;


 unsigned int CONTROL_MULT_SELECT ;
 int DIV_ROUND_CLOSEST (unsigned long,int) ;
 int EINVAL ;

 int LTC2945_CONTROL ;
 struct regmap* dev_get_drvdata (struct device*) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static int ltc2945_val_to_reg(struct device *dev, u8 reg,
         unsigned long val)
{
 struct regmap *regmap = dev_get_drvdata(dev);
 unsigned int control;
 int ret;

 switch (reg) {
 case 130:
 case 144:
 case 136:
 case 143:
 case 135:
  ret = regmap_read(regmap, LTC2945_CONTROL, &control);
  if (ret < 0)
   return ret;
  if (control & CONTROL_MULT_SELECT) {

   val = DIV_ROUND_CLOSEST(val, 625);
  } else {





   val = DIV_ROUND_CLOSEST(val, 25) * 2;
  }
  break;
 case 128:
 case 140:
 case 132:
 case 139:
 case 131:

  val /= 25;
  break;
 case 147:
 case 146:
 case 137:
 case 145:
 case 138:

  val *= 2;
  break;
 case 129:
 case 142:
 case 134:
 case 141:
 case 133:







  val = DIV_ROUND_CLOSEST(val, 25);
  break;
 default:
  return -EINVAL;
 }
 return val;
}
