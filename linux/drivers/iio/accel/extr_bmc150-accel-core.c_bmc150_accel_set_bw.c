
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bmc150_accel_data {int bw_bits; int regmap; } ;
struct TYPE_3__ {int val; int val2; int bw_bits; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int BMC150_ACCEL_REG_PMU_BW ;
 int EINVAL ;
 TYPE_1__* bmc150_accel_samp_freq_table ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int bmc150_accel_set_bw(struct bmc150_accel_data *data, int val,
          int val2)
{
 int i;
 int ret;

 for (i = 0; i < ARRAY_SIZE(bmc150_accel_samp_freq_table); ++i) {
  if (bmc150_accel_samp_freq_table[i].val == val &&
      bmc150_accel_samp_freq_table[i].val2 == val2) {
   ret = regmap_write(data->regmap,
    BMC150_ACCEL_REG_PMU_BW,
    bmc150_accel_samp_freq_table[i].bw_bits);
   if (ret < 0)
    return ret;

   data->bw_bits =
    bmc150_accel_samp_freq_table[i].bw_bits;
   return 0;
  }
 }

 return -EINVAL;
}
