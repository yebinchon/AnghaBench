
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bmg160_data {int regmap; } ;


 int BMG160_REG_PMU_BW ;
 int bmg160_convert_freq_to_bit (int) ;
 int dev_err (struct device*,char*) ;
 struct device* regmap_get_device (int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int bmg160_set_bw(struct bmg160_data *data, int val)
{
 struct device *dev = regmap_get_device(data->regmap);
 int ret;
 int bw_bits;

 bw_bits = bmg160_convert_freq_to_bit(val);
 if (bw_bits < 0)
  return bw_bits;

 ret = regmap_write(data->regmap, BMG160_REG_PMU_BW, bw_bits);
 if (ret < 0) {
  dev_err(dev, "Error writing reg_pmu_bw\n");
  return ret;
 }

 return 0;
}
