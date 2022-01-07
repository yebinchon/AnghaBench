
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxas21002c_data {int lock; int * regmap_fields; } ;


 size_t F_DR ;
 int IIO_VAL_INT ;
 int fxas21002c_odr_hz_from_value (struct fxas21002c_data*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_field_read (int ,unsigned int*) ;

__attribute__((used)) static int fxas21002c_odr_get(struct fxas21002c_data *data, int *odr)
{
 unsigned int odr_bits;
 int ret;

 mutex_lock(&data->lock);
 ret = regmap_field_read(data->regmap_fields[F_DR], &odr_bits);
 if (ret < 0)
  goto data_unlock;

 *odr = fxas21002c_odr_hz_from_value(data, odr_bits);

 ret = IIO_VAL_INT;

data_unlock:
 mutex_unlock(&data->lock);

 return ret;
}
