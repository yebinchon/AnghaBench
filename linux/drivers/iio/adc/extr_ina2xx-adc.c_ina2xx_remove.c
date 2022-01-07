
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ina2xx_chip_info {int regmap; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int INA2XX_CONFIG ;
 int INA2XX_MODE_MASK ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct ina2xx_chip_info* iio_priv (struct iio_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int ina2xx_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct ina2xx_chip_info *chip = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);


 return regmap_update_bits(chip->regmap, INA2XX_CONFIG,
      INA2XX_MODE_MASK, 0);
}
