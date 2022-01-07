
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;


 unsigned int CONTROL_MULT_SELECT ;
 long long EINVAL ;

 int LTC2945_CONTROL ;
 struct regmap* dev_get_drvdata (struct device*) ;
 scalar_t__ is_power_reg (int) ;
 int regmap_bulk_read (struct regmap*,int,int*,int) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static long long ltc2945_reg_to_val(struct device *dev, u8 reg)
{
 struct regmap *regmap = dev_get_drvdata(dev);
 unsigned int control;
 u8 buf[3];
 long long val;
 int ret;

 ret = regmap_bulk_read(regmap, reg, buf,
          is_power_reg(reg) ? 3 : 2);
 if (ret < 0)
  return ret;

 if (is_power_reg(reg)) {

  val = (buf[0] << 16) + (buf[1] << 8) + buf[2];
 } else {

  val = (buf[0] << 4) + (buf[1] >> 4);
 }

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

   val *= 625LL;
  } else {

   val = (val * 25LL) >> 1;
  }
  break;
 case 128:
 case 140:
 case 132:
 case 139:
 case 131:

  val *= 25;
  break;
 case 147:
 case 146:
 case 137:
 case 145:
 case 138:

  val = val >> 1;
  break;
 case 129:
 case 142:
 case 134:
 case 141:
 case 133:







  val *= 25;
  break;
 default:
  return -EINVAL;
 }
 return val;
}
