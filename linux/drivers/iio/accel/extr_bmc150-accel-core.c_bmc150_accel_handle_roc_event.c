
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device {int dummy; } ;
struct bmc150_accel_data {int timestamp; int regmap; } ;


 unsigned int BMC150_ACCEL_ANY_MOTION_BIT_SIGN ;
 unsigned int BMC150_ACCEL_ANY_MOTION_BIT_X ;
 unsigned int BMC150_ACCEL_ANY_MOTION_BIT_Y ;
 unsigned int BMC150_ACCEL_ANY_MOTION_BIT_Z ;
 int BMC150_ACCEL_REG_INT_STATUS_2 ;
 int IIO_ACCEL ;
 int IIO_EV_DIR_FALLING ;
 int IIO_EV_DIR_RISING ;
 int IIO_EV_TYPE_ROC ;
 int IIO_MOD_EVENT_CODE (int ,int ,int ,int ,int) ;
 int IIO_MOD_X ;
 int IIO_MOD_Y ;
 int IIO_MOD_Z ;
 int dev_err (struct device*,char*) ;
 struct bmc150_accel_data* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;
 struct device* regmap_get_device (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int bmc150_accel_handle_roc_event(struct iio_dev *indio_dev)
{
 struct bmc150_accel_data *data = iio_priv(indio_dev);
 struct device *dev = regmap_get_device(data->regmap);
 int dir;
 int ret;
 unsigned int val;

 ret = regmap_read(data->regmap, BMC150_ACCEL_REG_INT_STATUS_2, &val);
 if (ret < 0) {
  dev_err(dev, "Error reading reg_int_status_2\n");
  return ret;
 }

 if (val & BMC150_ACCEL_ANY_MOTION_BIT_SIGN)
  dir = IIO_EV_DIR_FALLING;
 else
  dir = IIO_EV_DIR_RISING;

 if (val & BMC150_ACCEL_ANY_MOTION_BIT_X)
  iio_push_event(indio_dev,
          IIO_MOD_EVENT_CODE(IIO_ACCEL,
        0,
        IIO_MOD_X,
        IIO_EV_TYPE_ROC,
        dir),
          data->timestamp);

 if (val & BMC150_ACCEL_ANY_MOTION_BIT_Y)
  iio_push_event(indio_dev,
          IIO_MOD_EVENT_CODE(IIO_ACCEL,
        0,
        IIO_MOD_Y,
        IIO_EV_TYPE_ROC,
        dir),
          data->timestamp);

 if (val & BMC150_ACCEL_ANY_MOTION_BIT_Z)
  iio_push_event(indio_dev,
          IIO_MOD_EVENT_CODE(IIO_ACCEL,
        0,
        IIO_MOD_Z,
        IIO_EV_TYPE_ROC,
        dir),
          data->timestamp);

 return ret;
}
