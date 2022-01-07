
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct adjd_s311_data {int buffer; } ;


 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct adjd_s311_data* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int kfree (int ) ;

__attribute__((used)) static int adjd_s311_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct adjd_s311_data *data = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 iio_triggered_buffer_cleanup(indio_dev);
 kfree(data->buffer);

 return 0;
}
