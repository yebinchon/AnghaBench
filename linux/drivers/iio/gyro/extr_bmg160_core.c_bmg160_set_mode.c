
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;
struct bmg160_data {int regmap; } ;


 int BMG160_REG_PMU_LPW ;
 int dev_err (struct device*,char*) ;
 struct device* regmap_get_device (int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int bmg160_set_mode(struct bmg160_data *data, u8 mode)
{
 struct device *dev = regmap_get_device(data->regmap);
 int ret;

 ret = regmap_write(data->regmap, BMG160_REG_PMU_LPW, mode);
 if (ret < 0) {
  dev_err(dev, "Error writing reg_pmu_lpw\n");
  return ret;
 }

 return 0;
}
