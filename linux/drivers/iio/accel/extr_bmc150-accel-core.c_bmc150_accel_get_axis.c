
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shift; scalar_t__ realbits; } ;
struct iio_chan_spec {int scan_index; TYPE_1__ scan_type; } ;
struct device {int dummy; } ;
struct bmc150_accel_data {int mutex; int regmap; } ;
typedef int raw_val ;
typedef int __le16 ;


 int BMC150_ACCEL_AXIS_TO_REG (int) ;
 int IIO_VAL_INT ;
 int bmc150_accel_set_power_state (struct bmc150_accel_data*,int) ;
 int dev_err (struct device*,char*,int) ;
 int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_read (int ,int ,int *,int) ;
 struct device* regmap_get_device (int ) ;
 int sign_extend32 (int,scalar_t__) ;

__attribute__((used)) static int bmc150_accel_get_axis(struct bmc150_accel_data *data,
     struct iio_chan_spec const *chan,
     int *val)
{
 struct device *dev = regmap_get_device(data->regmap);
 int ret;
 int axis = chan->scan_index;
 __le16 raw_val;

 mutex_lock(&data->mutex);
 ret = bmc150_accel_set_power_state(data, 1);
 if (ret < 0) {
  mutex_unlock(&data->mutex);
  return ret;
 }

 ret = regmap_bulk_read(data->regmap, BMC150_ACCEL_AXIS_TO_REG(axis),
          &raw_val, sizeof(raw_val));
 if (ret < 0) {
  dev_err(dev, "Error reading axis %d\n", axis);
  bmc150_accel_set_power_state(data, 0);
  mutex_unlock(&data->mutex);
  return ret;
 }
 *val = sign_extend32(le16_to_cpu(raw_val) >> chan->scan_type.shift,
        chan->scan_type.realbits - 1);
 ret = bmc150_accel_set_power_state(data, 0);
 mutex_unlock(&data->mutex);
 if (ret < 0)
  return ret;

 return IIO_VAL_INT;
}
