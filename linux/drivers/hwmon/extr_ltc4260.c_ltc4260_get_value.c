
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;



 struct regmap* dev_get_drvdata (struct device*) ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

__attribute__((used)) static int ltc4260_get_value(struct device *dev, u8 reg)
{
 struct regmap *regmap = dev_get_drvdata(dev);
 unsigned int val;
 int ret;

 ret = regmap_read(regmap, reg, &val);
 if (ret < 0)
  return ret;

 switch (reg) {
 case 130:

  val = val * 10;
  break;
 case 128:

  val = val * 400;
  break;
 case 129:







  val = val * 300;
  break;
 default:
  return -EINVAL;
 }

 return val;
}
