
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sx9500_data {int mutex; int regmap; } ;
struct TYPE_2__ {int val; int val2; } ;


 int IIO_VAL_INT_PLUS_MICRO ;
 int SX9500_REG_PROX_CTRL0 ;
 unsigned int SX9500_SCAN_PERIOD_MASK ;
 unsigned int SX9500_SCAN_PERIOD_SHIFT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;
 TYPE_1__* sx9500_samp_freq_table ;

__attribute__((used)) static int sx9500_read_samp_freq(struct sx9500_data *data,
     int *val, int *val2)
{
 int ret;
 unsigned int regval;

 mutex_lock(&data->mutex);
 ret = regmap_read(data->regmap, SX9500_REG_PROX_CTRL0, &regval);
 mutex_unlock(&data->mutex);

 if (ret < 0)
  return ret;

 regval = (regval & SX9500_SCAN_PERIOD_MASK) >> SX9500_SCAN_PERIOD_SHIFT;
 *val = sx9500_samp_freq_table[regval].val;
 *val2 = sx9500_samp_freq_table[regval].val2;

 return IIO_VAL_INT_PLUS_MICRO;
}
