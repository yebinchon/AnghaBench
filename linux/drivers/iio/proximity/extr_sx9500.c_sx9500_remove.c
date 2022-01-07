
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx9500_data {int buffer; int trig; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {scalar_t__ irq; } ;


 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct sx9500_data* iio_priv (struct iio_dev*) ;
 int iio_trigger_unregister (int ) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int kfree (int ) ;

__attribute__((used)) static int sx9500_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct sx9500_data *data = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 iio_triggered_buffer_cleanup(indio_dev);
 if (client->irq > 0)
  iio_trigger_unregister(data->trig);
 kfree(data->buffer);

 return 0;
}
