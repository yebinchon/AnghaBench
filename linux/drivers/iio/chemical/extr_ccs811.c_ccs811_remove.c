
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct ccs811_data {scalar_t__ drdy_trig; } ;


 int CCS811_MEAS_MODE ;
 int CCS811_MODE_IDLE ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct ccs811_data* iio_priv (struct iio_dev*) ;
 int iio_trigger_unregister (scalar_t__) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;

__attribute__((used)) static int ccs811_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct ccs811_data *data = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 iio_triggered_buffer_cleanup(indio_dev);
 if (data->drdy_trig)
  iio_trigger_unregister(data->drdy_trig);

 return i2c_smbus_write_byte_data(client, CCS811_MEAS_MODE,
      CCS811_MODE_IDLE);
}
