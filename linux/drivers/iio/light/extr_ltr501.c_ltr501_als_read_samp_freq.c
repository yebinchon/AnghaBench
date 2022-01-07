
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ltr501_data {int reg_als_rate; } ;
struct TYPE_3__ {int freq_val; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int IIO_VAL_INT_PLUS_MICRO ;
 TYPE_1__* ltr501_als_samp_table ;
 int regmap_field_read (int ,int*) ;

__attribute__((used)) static int ltr501_als_read_samp_freq(struct ltr501_data *data,
         int *val, int *val2)
{
 int ret, i;

 ret = regmap_field_read(data->reg_als_rate, &i);
 if (ret < 0)
  return ret;

 if (i < 0 || i >= ARRAY_SIZE(ltr501_als_samp_table))
  return -EINVAL;

 *val = ltr501_als_samp_table[i].freq_val / 1000000;
 *val2 = ltr501_als_samp_table[i].freq_val % 1000000;

 return IIO_VAL_INT_PLUS_MICRO;
}
