
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxas21002c_data {int lock; int * regmap_fields; int regmap; } ;
struct device {int dummy; } ;


 size_t F_TEMP ;
 int IIO_VAL_INT ;
 int dev_err (struct device*,char*,int) ;
 int fxas21002c_pm_get (struct fxas21002c_data*) ;
 int fxas21002c_pm_put (struct fxas21002c_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_field_read (int ,unsigned int*) ;
 struct device* regmap_get_device (int ) ;
 int sign_extend32 (unsigned int,int) ;

__attribute__((used)) static int fxas21002c_temp_get(struct fxas21002c_data *data, int *val)
{
 struct device *dev = regmap_get_device(data->regmap);
 unsigned int temp;
 int ret;

 mutex_lock(&data->lock);
 ret = fxas21002c_pm_get(data);
 if (ret < 0)
  goto data_unlock;

 ret = regmap_field_read(data->regmap_fields[F_TEMP], &temp);
 if (ret < 0) {
  dev_err(dev, "failed to read temp: %d\n", ret);
  goto data_unlock;
 }

 *val = sign_extend32(temp, 7);

 ret = fxas21002c_pm_put(data);
 if (ret < 0)
  goto data_unlock;

 ret = IIO_VAL_INT;

data_unlock:
 mutex_unlock(&data->lock);

 return ret;
}
