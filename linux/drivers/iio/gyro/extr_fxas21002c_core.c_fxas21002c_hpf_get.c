
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxas21002c_data {int lock; int * regmap_fields; } ;


 size_t F_SEL ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int fxas21002c_hpf_sel_from_value (struct fxas21002c_data*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_field_read (int ,unsigned int*) ;

__attribute__((used)) static int fxas21002c_hpf_get(struct fxas21002c_data *data, int *val2)
{
 unsigned int sel_bits;
 int ret;

 mutex_lock(&data->lock);
 ret = regmap_field_read(data->regmap_fields[F_SEL], &sel_bits);
 if (ret < 0)
  goto data_unlock;

 *val2 = fxas21002c_hpf_sel_from_value(data, sel_bits);

 ret = IIO_VAL_INT_PLUS_MICRO;

data_unlock:
 mutex_unlock(&data->lock);

 return ret;
}
