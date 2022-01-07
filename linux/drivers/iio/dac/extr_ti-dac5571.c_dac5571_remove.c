
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct dac5571_data {int vref; } ;


 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct dac5571_data* iio_priv (struct iio_dev*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int dac5571_remove(struct i2c_client *i2c)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(i2c);
 struct dac5571_data *data = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 regulator_disable(data->vref);

 return 0;
}
