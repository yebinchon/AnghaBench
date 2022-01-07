
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct lm75_data {int resolution; int regmap; TYPE_1__* params; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int resolution_limits; } ;


 int DIV_ROUND_CLOSEST (long,int) ;
 int EINVAL ;
 int LM75_REG_HYST ;
 int LM75_REG_MAX ;
 int LM75_TEMP_MAX ;
 int LM75_TEMP_MIN ;
 long clamp_val (long,int ,int ) ;
 struct lm75_data* dev_get_drvdata (struct device*) ;


 int regmap_write (int ,int,int ) ;

__attribute__((used)) static int lm75_write_temp(struct device *dev, u32 attr, long temp)
{
 struct lm75_data *data = dev_get_drvdata(dev);
 u8 resolution;
 int reg;

 switch (attr) {
 case 129:
  reg = LM75_REG_MAX;
  break;
 case 128:
  reg = LM75_REG_HYST;
  break;
 default:
  return -EINVAL;
 }





 if (data->params->resolution_limits)
  resolution = data->params->resolution_limits;
 else
  resolution = data->resolution;

 temp = clamp_val(temp, LM75_TEMP_MIN, LM75_TEMP_MAX);
 temp = DIV_ROUND_CLOSEST(temp << (resolution - 8),
     1000) << (16 - resolution);

 return regmap_write(data->regmap, reg, (u16)temp);
}
