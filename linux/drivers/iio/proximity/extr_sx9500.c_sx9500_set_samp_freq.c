
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sx9500_data {int mutex; int regmap; } ;
struct TYPE_3__ {int val; int val2; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int SX9500_REG_PROX_CTRL0 ;
 int SX9500_SCAN_PERIOD_MASK ;
 int SX9500_SCAN_PERIOD_SHIFT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 TYPE_1__* sx9500_samp_freq_table ;

__attribute__((used)) static int sx9500_set_samp_freq(struct sx9500_data *data,
    int val, int val2)
{
 int i, ret;

 for (i = 0; i < ARRAY_SIZE(sx9500_samp_freq_table); i++)
  if (val == sx9500_samp_freq_table[i].val &&
      val2 == sx9500_samp_freq_table[i].val2)
   break;

 if (i == ARRAY_SIZE(sx9500_samp_freq_table))
  return -EINVAL;

 mutex_lock(&data->mutex);

 ret = regmap_update_bits(data->regmap, SX9500_REG_PROX_CTRL0,
     SX9500_SCAN_PERIOD_MASK,
     i << SX9500_SCAN_PERIOD_SHIFT);

 mutex_unlock(&data->mutex);

 return ret;
}
