
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc2497_st {int ref; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 int iio_map_array_unregister (struct iio_dev*) ;
 struct ltc2497_st* iio_priv (struct iio_dev*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int ltc2497_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct ltc2497_st *st = iio_priv(indio_dev);

 iio_map_array_unregister(indio_dev);
 iio_device_unregister(indio_dev);
 regulator_disable(st->ref);

 return 0;
}
