
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct ad799x_state {int rx_buf; int reg; int vref; } ;


 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct ad799x_state* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int kfree (int ) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int ad799x_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct ad799x_state *st = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);

 iio_triggered_buffer_cleanup(indio_dev);
 regulator_disable(st->vref);
 regulator_disable(st->reg);
 kfree(st->rx_buf);

 return 0;
}
