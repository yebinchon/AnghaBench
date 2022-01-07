
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max44009_data {int client; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IIO_EV_DIR_EITHER ;
 int IIO_EV_TYPE_THRESH ;
 int IIO_LIGHT ;
 int IIO_UNMOD_EVENT_CODE (int ,int ,int ,int ) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MAX44009_REG_INT_STATUS ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct max44009_data* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;

__attribute__((used)) static irqreturn_t max44009_threaded_irq_handler(int irq, void *p)
{
 struct iio_dev *indio_dev = p;
 struct max44009_data *data = iio_priv(indio_dev);
 int ret;

 ret = i2c_smbus_read_byte_data(data->client, MAX44009_REG_INT_STATUS);
 if (ret) {
  iio_push_event(indio_dev,
          IIO_UNMOD_EVENT_CODE(IIO_LIGHT, 0,
          IIO_EV_TYPE_THRESH,
          IIO_EV_DIR_EITHER),
          iio_get_time_ns(indio_dev));

  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
