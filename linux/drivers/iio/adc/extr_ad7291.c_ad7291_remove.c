
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {scalar_t__ irq; } ;
struct ad7291_chip_info {scalar_t__ reg; } ;


 int free_irq (scalar_t__,struct iio_dev*) ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct ad7291_chip_info* iio_priv (struct iio_dev*) ;
 int regulator_disable (scalar_t__) ;

__attribute__((used)) static int ad7291_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct ad7291_chip_info *chip = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);

 if (client->irq)
  free_irq(client->irq, indio_dev);

 if (chip->reg)
  regulator_disable(chip->reg);

 return 0;
}
