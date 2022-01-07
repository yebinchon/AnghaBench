
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct hp03_priv {int eeprom_client; int eeprom_regmap; } ;


 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct hp03_priv* iio_priv (struct iio_dev*) ;
 int regmap_exit (int ) ;

__attribute__((used)) static int hp03_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct hp03_priv *priv = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 regmap_exit(priv->eeprom_regmap);
 i2c_unregister_device(priv->eeprom_client);

 return 0;
}
