
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxas21002c_data {int lock; int regmap; } ;
struct device {int dummy; } ;
typedef int axis_be ;
typedef int __be16 ;


 int FXAS21002C_AXIS_TO_REG (int) ;
 int IIO_VAL_INT ;
 int be16_to_cpu (int ) ;
 int dev_err (struct device*,char*,int,int) ;
 int fxas21002c_pm_get (struct fxas21002c_data*) ;
 int fxas21002c_pm_put (struct fxas21002c_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_read (int ,int ,int *,int) ;
 struct device* regmap_get_device (int ) ;
 int sign_extend32 (int ,int) ;

__attribute__((used)) static int fxas21002c_axis_get(struct fxas21002c_data *data,
          int index, int *val)
{
 struct device *dev = regmap_get_device(data->regmap);
 __be16 axis_be;
 int ret;

 mutex_lock(&data->lock);
 ret = fxas21002c_pm_get(data);
 if (ret < 0)
  goto data_unlock;

 ret = regmap_bulk_read(data->regmap, FXAS21002C_AXIS_TO_REG(index),
          &axis_be, sizeof(axis_be));
 if (ret < 0) {
  dev_err(dev, "failed to read axis: %d: %d\n", index, ret);
  goto data_unlock;
 }

 *val = sign_extend32(be16_to_cpu(axis_be), 15);

 ret = fxas21002c_pm_put(data);
 if (ret < 0)
  goto data_unlock;

 ret = IIO_VAL_INT;

data_unlock:
 mutex_unlock(&data->lock);

 return ret;
}
