
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxas21002c_data {int lock; int * regmap_fields; } ;


 size_t F_FS ;
 int fxas21002c_range_fs_from_value (struct fxas21002c_data*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_field_read (int ,int*) ;

__attribute__((used)) static int fxas21002c_scale_get(struct fxas21002c_data *data, int *val)
{
 int fs_bits;
 int scale;
 int ret;

 mutex_lock(&data->lock);
 ret = regmap_field_read(data->regmap_fields[F_FS], &fs_bits);
 if (ret < 0)
  goto data_unlock;

 scale = fxas21002c_range_fs_from_value(data, fs_bits);
 if (scale < 0) {
  ret = scale;
  goto data_unlock;
 }

 *val = scale;

data_unlock:
 mutex_unlock(&data->lock);

 return ret;
}
