
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 int iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int mpl3115_standby (int ) ;

__attribute__((used)) static int mpl3115_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);

 iio_device_unregister(indio_dev);
 iio_triggered_buffer_cleanup(indio_dev);
 mpl3115_standby(iio_priv(indio_dev));

 return 0;
}
