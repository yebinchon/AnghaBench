
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct bmc150_accel_data {TYPE_1__* chip_info; int range; int regmap; } ;
struct TYPE_4__ {int scale; int reg_range; } ;
struct TYPE_3__ {TYPE_2__* scale_table; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int BMC150_ACCEL_REG_PMU_RANGE ;
 int EINVAL ;
 int dev_err (struct device*,char*) ;
 struct device* regmap_get_device (int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int bmc150_accel_set_scale(struct bmc150_accel_data *data, int val)
{
 struct device *dev = regmap_get_device(data->regmap);
 int ret, i;

 for (i = 0; i < ARRAY_SIZE(data->chip_info->scale_table); ++i) {
  if (data->chip_info->scale_table[i].scale == val) {
   ret = regmap_write(data->regmap,
         BMC150_ACCEL_REG_PMU_RANGE,
         data->chip_info->scale_table[i].reg_range);
   if (ret < 0) {
    dev_err(dev, "Error writing pmu_range\n");
    return ret;
   }

   data->range = data->chip_info->scale_table[i].reg_range;
   return 0;
  }
 }

 return -EINVAL;
}
