
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bmg160_data {int mutex; int regmap; } ;
typedef int raw_val ;
typedef int __le16 ;


 int BMG160_AXIS_TO_REG (int) ;
 int IIO_VAL_INT ;
 int bmg160_set_power_state (struct bmg160_data*,int) ;
 int dev_err (struct device*,char*,int) ;
 int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_read (int ,int ,int *,int) ;
 struct device* regmap_get_device (int ) ;
 int sign_extend32 (int ,int) ;

__attribute__((used)) static int bmg160_get_axis(struct bmg160_data *data, int axis, int *val)
{
 struct device *dev = regmap_get_device(data->regmap);
 int ret;
 __le16 raw_val;

 mutex_lock(&data->mutex);
 ret = bmg160_set_power_state(data, 1);
 if (ret < 0) {
  mutex_unlock(&data->mutex);
  return ret;
 }

 ret = regmap_bulk_read(data->regmap, BMG160_AXIS_TO_REG(axis), &raw_val,
          sizeof(raw_val));
 if (ret < 0) {
  dev_err(dev, "Error reading axis %d\n", axis);
  bmg160_set_power_state(data, 0);
  mutex_unlock(&data->mutex);
  return ret;
 }

 *val = sign_extend32(le16_to_cpu(raw_val), 15);
 ret = bmg160_set_power_state(data, 0);
 mutex_unlock(&data->mutex);
 if (ret < 0)
  return ret;

 return IIO_VAL_INT;
}
