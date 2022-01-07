
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxas21002c_data {int lock; int * regmap_fields; } ;


 size_t F_BW ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int fxas21002c_lpf_bw_from_value (struct fxas21002c_data*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_field_read (int ,unsigned int*) ;

__attribute__((used)) static int fxas21002c_lpf_get(struct fxas21002c_data *data, int *val2)
{
 unsigned int bw_bits;
 int ret;

 mutex_lock(&data->lock);
 ret = regmap_field_read(data->regmap_fields[F_BW], &bw_bits);
 if (ret < 0)
  goto data_unlock;

 *val2 = fxas21002c_lpf_bw_from_value(data, bw_bits) * 10000;

 ret = IIO_VAL_INT_PLUS_MICRO;

data_unlock:
 mutex_unlock(&data->lock);

 return ret;
}
