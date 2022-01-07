
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int STK3310_STATE_STANDBY ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 int iio_priv (struct iio_dev*) ;
 int stk3310_set_state (int ,int ) ;

__attribute__((used)) static int stk3310_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);

 iio_device_unregister(indio_dev);
 return stk3310_set_state(iio_priv(indio_dev), STK3310_STATE_STANDBY);
}
