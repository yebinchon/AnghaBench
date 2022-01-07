
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mma8452_data {TYPE_1__* chip_info; int client; } ;
struct iio_dev {int trig; } ;
typedef int s64 ;
typedef int irqreturn_t ;
struct TYPE_2__ {int enabled_events; } ;


 int IIO_ACCEL ;
 int IIO_EV_DIR_FALLING ;
 int IIO_EV_TYPE_MAG ;
 int IIO_MOD_EVENT_CODE (int ,int ,int ,int ,int ) ;
 int IIO_MOD_X_AND_Y_AND_Z ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MMA8452_INT_DRDY ;
 int MMA8452_INT_FF_MT ;
 int MMA8452_INT_SRC ;
 int MMA8452_INT_TRANS ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct mma8452_data* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;
 int iio_trigger_poll_chained (int ) ;
 scalar_t__ mma8452_freefall_mode_enabled (struct mma8452_data*) ;
 int mma8452_transient_interrupt (struct iio_dev*) ;

__attribute__((used)) static irqreturn_t mma8452_interrupt(int irq, void *p)
{
 struct iio_dev *indio_dev = p;
 struct mma8452_data *data = iio_priv(indio_dev);
 int ret = IRQ_NONE;
 int src;

 src = i2c_smbus_read_byte_data(data->client, MMA8452_INT_SRC);
 if (src < 0)
  return IRQ_NONE;

 if (!(src & (data->chip_info->enabled_events | MMA8452_INT_DRDY)))
  return IRQ_NONE;

 if (src & MMA8452_INT_DRDY) {
  iio_trigger_poll_chained(indio_dev->trig);
  ret = IRQ_HANDLED;
 }

 if (src & MMA8452_INT_FF_MT) {
  if (mma8452_freefall_mode_enabled(data)) {
   s64 ts = iio_get_time_ns(indio_dev);

   iio_push_event(indio_dev,
           IIO_MOD_EVENT_CODE(IIO_ACCEL, 0,
         IIO_MOD_X_AND_Y_AND_Z,
         IIO_EV_TYPE_MAG,
         IIO_EV_DIR_FALLING),
     ts);
  }
  ret = IRQ_HANDLED;
 }

 if (src & MMA8452_INT_TRANS) {
  mma8452_transient_interrupt(indio_dev);
  ret = IRQ_HANDLED;
 }

 return ret;
}
