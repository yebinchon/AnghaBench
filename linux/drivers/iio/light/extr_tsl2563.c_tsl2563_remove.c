
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsl2563_chip {int intr; int client; int poweroff_work; int int_enabled; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int TSL2563_CMD ;
 int TSL2563_REG_INT ;
 int cancel_delayed_work (int *) ;
 int flush_scheduled_work () ;
 struct tsl2563_chip* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (int ,int,int) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct iio_dev* iio_priv_to_dev (struct tsl2563_chip*) ;
 int tsl2563_set_power (struct tsl2563_chip*,int ) ;

__attribute__((used)) static int tsl2563_remove(struct i2c_client *client)
{
 struct tsl2563_chip *chip = i2c_get_clientdata(client);
 struct iio_dev *indio_dev = iio_priv_to_dev(chip);

 iio_device_unregister(indio_dev);
 if (!chip->int_enabled)
  cancel_delayed_work(&chip->poweroff_work);

 chip->intr &= ~0x30;
 i2c_smbus_write_byte_data(chip->client, TSL2563_CMD | TSL2563_REG_INT,
      chip->intr);
 flush_scheduled_work();
 tsl2563_set_power(chip, 0);

 return 0;
}
