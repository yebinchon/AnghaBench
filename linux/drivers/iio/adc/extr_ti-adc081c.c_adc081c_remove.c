
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct adc081c {int ref; } ;


 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct adc081c* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int adc081c_remove(struct i2c_client *client)
{
 struct iio_dev *iio = i2c_get_clientdata(client);
 struct adc081c *adc = iio_priv(iio);

 iio_device_unregister(iio);
 iio_triggered_buffer_cleanup(iio);
 regulator_disable(adc->ref);

 return 0;
}
