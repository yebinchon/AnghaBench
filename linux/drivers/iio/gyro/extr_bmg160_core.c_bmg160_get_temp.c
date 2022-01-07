
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bmg160_data {int mutex; int regmap; } ;


 int BMG160_REG_TEMP ;
 int IIO_VAL_INT ;
 int bmg160_set_power_state (struct bmg160_data*,int) ;
 int dev_err (struct device*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct device* regmap_get_device (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int sign_extend32 (unsigned int,int) ;

__attribute__((used)) static int bmg160_get_temp(struct bmg160_data *data, int *val)
{
 struct device *dev = regmap_get_device(data->regmap);
 int ret;
 unsigned int raw_val;

 mutex_lock(&data->mutex);
 ret = bmg160_set_power_state(data, 1);
 if (ret < 0) {
  mutex_unlock(&data->mutex);
  return ret;
 }

 ret = regmap_read(data->regmap, BMG160_REG_TEMP, &raw_val);
 if (ret < 0) {
  dev_err(dev, "Error reading reg_temp\n");
  bmg160_set_power_state(data, 0);
  mutex_unlock(&data->mutex);
  return ret;
 }

 *val = sign_extend32(raw_val, 7);
 ret = bmg160_set_power_state(data, 0);
 mutex_unlock(&data->mutex);
 if (ret < 0)
  return ret;

 return IIO_VAL_INT;
}
