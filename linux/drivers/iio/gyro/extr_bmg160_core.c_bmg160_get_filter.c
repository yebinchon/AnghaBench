
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct bmg160_data {int regmap; } ;
struct TYPE_3__ {unsigned int bw_bits; int filter; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int BMG160_REG_PMU_BW ;
 unsigned int BMG160_REG_PMU_BW_RES ;
 int IIO_VAL_INT ;
 TYPE_1__* bmg160_samp_freq_table ;
 int dev_err (struct device*,char*) ;
 struct device* regmap_get_device (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int bmg160_get_filter(struct bmg160_data *data, int *val)
{
 struct device *dev = regmap_get_device(data->regmap);
 int ret;
 int i;
 unsigned int bw_bits;

 ret = regmap_read(data->regmap, BMG160_REG_PMU_BW, &bw_bits);
 if (ret < 0) {
  dev_err(dev, "Error reading reg_pmu_bw\n");
  return ret;
 }


 bw_bits &= ~BMG160_REG_PMU_BW_RES;

 for (i = 0; i < ARRAY_SIZE(bmg160_samp_freq_table); ++i) {
  if (bmg160_samp_freq_table[i].bw_bits == bw_bits)
   break;
 }

 *val = bmg160_samp_freq_table[i].filter;

 return ret ? ret : IIO_VAL_INT;
}
