
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bmc150_accel_data {int mutex; int regmap; } ;


 int BMC150_ACCEL_REG_TEMP ;
 int IIO_VAL_INT ;
 int dev_err (struct device*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct device* regmap_get_device (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int sign_extend32 (unsigned int,int) ;

__attribute__((used)) static int bmc150_accel_get_temp(struct bmc150_accel_data *data, int *val)
{
 struct device *dev = regmap_get_device(data->regmap);
 int ret;
 unsigned int value;

 mutex_lock(&data->mutex);

 ret = regmap_read(data->regmap, BMC150_ACCEL_REG_TEMP, &value);
 if (ret < 0) {
  dev_err(dev, "Error reading reg_temp\n");
  mutex_unlock(&data->mutex);
  return ret;
 }
 *val = sign_extend32(value, 7);

 mutex_unlock(&data->mutex);

 return IIO_VAL_INT;
}
