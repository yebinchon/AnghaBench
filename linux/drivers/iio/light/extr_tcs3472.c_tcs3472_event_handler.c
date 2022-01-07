
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcs3472_data {int client; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IIO_EV_DIR_EITHER ;
 int IIO_EV_TYPE_THRESH ;
 int IIO_INTENSITY ;
 int IIO_UNMOD_EVENT_CODE (int ,int ,int ,int ) ;
 int IRQ_HANDLED ;
 int TCS3472_INTR_CLEAR ;
 int TCS3472_STATUS ;
 int TCS3472_STATUS_AINT ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct tcs3472_data* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;

__attribute__((used)) static irqreturn_t tcs3472_event_handler(int irq, void *priv)
{
 struct iio_dev *indio_dev = priv;
 struct tcs3472_data *data = iio_priv(indio_dev);
 int ret;

 ret = i2c_smbus_read_byte_data(data->client, TCS3472_STATUS);
 if (ret >= 0 && (ret & TCS3472_STATUS_AINT)) {
  iio_push_event(indio_dev, IIO_UNMOD_EVENT_CODE(IIO_INTENSITY, 0,
      IIO_EV_TYPE_THRESH,
      IIO_EV_DIR_EITHER),
    iio_get_time_ns(indio_dev));

  i2c_smbus_read_byte_data(data->client, TCS3472_INTR_CLEAR);
 }

 return IRQ_HANDLED;
}
