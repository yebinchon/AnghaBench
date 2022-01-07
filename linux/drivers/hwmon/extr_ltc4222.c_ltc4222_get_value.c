
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;


 unsigned int DIV_ROUND_CLOSEST (unsigned int,int) ;
 int EINVAL ;






 struct regmap* dev_get_drvdata (struct device*) ;
 int regmap_bulk_read (struct regmap*,int,int*,int) ;

__attribute__((used)) static int ltc4222_get_value(struct device *dev, u8 reg)
{
 struct regmap *regmap = dev_get_drvdata(dev);
 unsigned int val;
 u8 buf[2];
 int ret;

 ret = regmap_bulk_read(regmap, reg, buf, 2);
 if (ret < 0)
  return ret;

 val = ((buf[0] << 8) + buf[1]) >> 6;

 switch (reg) {
 case 133:
 case 132:

  val = DIV_ROUND_CLOSEST(val * 5, 4);
  break;
 case 129:
 case 128:

  val = DIV_ROUND_CLOSEST(val * 125, 4);
  break;
 case 131:
 case 130:







  val = DIV_ROUND_CLOSEST(val * 125, 2);
  break;
 default:
  return -EINVAL;
 }
 return val;
}
