
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max1363_state {scalar_t__ reg; scalar_t__ vref; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 int iio_map_array_unregister (struct iio_dev*) ;
 struct max1363_state* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int regulator_disable (scalar_t__) ;

__attribute__((used)) static int max1363_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct max1363_state *st = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 iio_triggered_buffer_cleanup(indio_dev);
 if (st->vref)
  regulator_disable(st->vref);
 regulator_disable(st->reg);
 iio_map_array_unregister(indio_dev);

 return 0;
}
