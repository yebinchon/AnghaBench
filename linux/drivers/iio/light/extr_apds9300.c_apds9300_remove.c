
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct apds9300_data {int dummy; } ;


 int apds9300_set_intr_state (struct apds9300_data*,int ) ;
 int apds9300_set_power_state (struct apds9300_data*,int ) ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct apds9300_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int apds9300_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct apds9300_data *data = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);


 apds9300_set_intr_state(data, 0);
 apds9300_set_power_state(data, 0);

 return 0;
}
