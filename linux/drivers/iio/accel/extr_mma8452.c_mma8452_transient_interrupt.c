
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma8452_data {int client; } ;
struct iio_dev {int dummy; } ;
typedef int s64 ;


 int IIO_ACCEL ;
 int IIO_EV_DIR_RISING ;
 int IIO_EV_TYPE_MAG ;
 int IIO_MOD_EVENT_CODE (int ,int ,int ,int ,int ) ;
 int IIO_MOD_X ;
 int IIO_MOD_Y ;
 int IIO_MOD_Z ;
 int MMA8452_TRANSIENT_SRC ;
 int MMA8452_TRANSIENT_SRC_XTRANSE ;
 int MMA8452_TRANSIENT_SRC_YTRANSE ;
 int MMA8452_TRANSIENT_SRC_ZTRANSE ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct mma8452_data* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;

__attribute__((used)) static void mma8452_transient_interrupt(struct iio_dev *indio_dev)
{
 struct mma8452_data *data = iio_priv(indio_dev);
 s64 ts = iio_get_time_ns(indio_dev);
 int src;

 src = i2c_smbus_read_byte_data(data->client, MMA8452_TRANSIENT_SRC);
 if (src < 0)
  return;

 if (src & MMA8452_TRANSIENT_SRC_XTRANSE)
  iio_push_event(indio_dev,
          IIO_MOD_EVENT_CODE(IIO_ACCEL, 0, IIO_MOD_X,
        IIO_EV_TYPE_MAG,
        IIO_EV_DIR_RISING),
          ts);

 if (src & MMA8452_TRANSIENT_SRC_YTRANSE)
  iio_push_event(indio_dev,
          IIO_MOD_EVENT_CODE(IIO_ACCEL, 0, IIO_MOD_Y,
        IIO_EV_TYPE_MAG,
        IIO_EV_DIR_RISING),
          ts);

 if (src & MMA8452_TRANSIENT_SRC_ZTRANSE)
  iio_push_event(indio_dev,
          IIO_MOD_EVENT_CODE(IIO_ACCEL, 0, IIO_MOD_Z,
        IIO_EV_TYPE_MAG,
        IIO_EV_DIR_RISING),
          ts);
}
