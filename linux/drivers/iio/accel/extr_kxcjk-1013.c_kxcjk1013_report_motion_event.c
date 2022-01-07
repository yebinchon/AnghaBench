
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kxcjk1013_data {int timestamp; TYPE_1__* client; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int IIO_ACCEL ;
 int IIO_EV_DIR_FALLING ;
 int IIO_EV_DIR_RISING ;
 int IIO_EV_TYPE_THRESH ;
 int IIO_MOD_EVENT_CODE (int ,int ,int ,int ,int ) ;
 int IIO_MOD_X ;
 int IIO_MOD_Y ;
 int IIO_MOD_Z ;
 int KXCJK1013_REG_INT_SRC2 ;
 int KXCJK1013_REG_INT_SRC2_BIT_XN ;
 int KXCJK1013_REG_INT_SRC2_BIT_XP ;
 int KXCJK1013_REG_INT_SRC2_BIT_YN ;
 int KXCJK1013_REG_INT_SRC2_BIT_YP ;
 int KXCJK1013_REG_INT_SRC2_BIT_ZN ;
 int KXCJK1013_REG_INT_SRC2_BIT_ZP ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 struct kxcjk1013_data* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;

__attribute__((used)) static void kxcjk1013_report_motion_event(struct iio_dev *indio_dev)
{
 struct kxcjk1013_data *data = iio_priv(indio_dev);

 int ret = i2c_smbus_read_byte_data(data->client,
        KXCJK1013_REG_INT_SRC2);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error reading reg_int_src2\n");
  return;
 }

 if (ret & KXCJK1013_REG_INT_SRC2_BIT_XN)
  iio_push_event(indio_dev,
          IIO_MOD_EVENT_CODE(IIO_ACCEL,
        0,
        IIO_MOD_X,
        IIO_EV_TYPE_THRESH,
        IIO_EV_DIR_FALLING),
          data->timestamp);

 if (ret & KXCJK1013_REG_INT_SRC2_BIT_XP)
  iio_push_event(indio_dev,
          IIO_MOD_EVENT_CODE(IIO_ACCEL,
        0,
        IIO_MOD_X,
        IIO_EV_TYPE_THRESH,
        IIO_EV_DIR_RISING),
          data->timestamp);

 if (ret & KXCJK1013_REG_INT_SRC2_BIT_YN)
  iio_push_event(indio_dev,
          IIO_MOD_EVENT_CODE(IIO_ACCEL,
        0,
        IIO_MOD_Y,
        IIO_EV_TYPE_THRESH,
        IIO_EV_DIR_FALLING),
          data->timestamp);

 if (ret & KXCJK1013_REG_INT_SRC2_BIT_YP)
  iio_push_event(indio_dev,
          IIO_MOD_EVENT_CODE(IIO_ACCEL,
        0,
        IIO_MOD_Y,
        IIO_EV_TYPE_THRESH,
        IIO_EV_DIR_RISING),
          data->timestamp);

 if (ret & KXCJK1013_REG_INT_SRC2_BIT_ZN)
  iio_push_event(indio_dev,
          IIO_MOD_EVENT_CODE(IIO_ACCEL,
        0,
        IIO_MOD_Z,
        IIO_EV_TYPE_THRESH,
        IIO_EV_DIR_FALLING),
          data->timestamp);

 if (ret & KXCJK1013_REG_INT_SRC2_BIT_ZP)
  iio_push_event(indio_dev,
          IIO_MOD_EVENT_CODE(IIO_ACCEL,
        0,
        IIO_MOD_Z,
        IIO_EV_TYPE_THRESH,
        IIO_EV_DIR_RISING),
          data->timestamp);
}
