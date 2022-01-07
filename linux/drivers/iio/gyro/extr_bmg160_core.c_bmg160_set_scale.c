
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct bmg160_data {int dps_range; int regmap; } ;
struct TYPE_3__ {int scale; int dps_range; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int BMG160_REG_RANGE ;
 int EINVAL ;
 TYPE_1__* bmg160_scale_table ;
 int dev_err (struct device*,char*) ;
 struct device* regmap_get_device (int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int bmg160_set_scale(struct bmg160_data *data, int val)
{
 struct device *dev = regmap_get_device(data->regmap);
 int ret, i;

 for (i = 0; i < ARRAY_SIZE(bmg160_scale_table); ++i) {
  if (bmg160_scale_table[i].scale == val) {
   ret = regmap_write(data->regmap, BMG160_REG_RANGE,
        bmg160_scale_table[i].dps_range);
   if (ret < 0) {
    dev_err(dev, "Error writing reg_range\n");
    return ret;
   }
   data->dps_range = bmg160_scale_table[i].dps_range;
   return 0;
  }
 }

 return -EINVAL;
}
