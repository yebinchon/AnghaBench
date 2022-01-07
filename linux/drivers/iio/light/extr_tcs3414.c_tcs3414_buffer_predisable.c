
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcs3414_data {int control; int client; } ;
struct iio_dev {int dummy; } ;


 int TCS3414_CONTROL ;
 int TCS3414_CONTROL_ADC_EN ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;
 struct tcs3414_data* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_predisable (struct iio_dev*) ;

__attribute__((used)) static int tcs3414_buffer_predisable(struct iio_dev *indio_dev)
{
 struct tcs3414_data *data = iio_priv(indio_dev);
 int ret;

 ret = iio_triggered_buffer_predisable(indio_dev);
 if (ret < 0)
  return ret;

 data->control &= ~TCS3414_CONTROL_ADC_EN;
 return i2c_smbus_write_byte_data(data->client, TCS3414_CONTROL,
  data->control);
}
