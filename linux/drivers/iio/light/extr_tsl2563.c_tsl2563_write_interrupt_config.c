
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsl2563_chip {int intr; int int_enabled; int lock; int poweroff_work; int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int HZ ;
 int TSL2563_CMD ;
 int TSL2563_REG_INT ;
 int cancel_delayed_work (int *) ;
 int i2c_smbus_write_byte_data (int ,int,int) ;
 struct tsl2563_chip* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_delayed_work (int *,int) ;
 int tsl2563_configure (struct tsl2563_chip*) ;
 int tsl2563_get_power (struct tsl2563_chip*) ;
 int tsl2563_set_power (struct tsl2563_chip*,int) ;

__attribute__((used)) static int tsl2563_write_interrupt_config(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, enum iio_event_type type,
 enum iio_event_direction dir, int state)
{
 struct tsl2563_chip *chip = iio_priv(indio_dev);
 int ret = 0;

 mutex_lock(&chip->lock);
 if (state && !(chip->intr & 0x30)) {
  chip->intr &= ~0x30;
  chip->intr |= 0x10;

  cancel_delayed_work(&chip->poweroff_work);
  if (!tsl2563_get_power(chip)) {
   ret = tsl2563_set_power(chip, 1);
   if (ret)
    goto out;
   ret = tsl2563_configure(chip);
   if (ret)
    goto out;
  }
  ret = i2c_smbus_write_byte_data(chip->client,
      TSL2563_CMD | TSL2563_REG_INT,
      chip->intr);
  chip->int_enabled = 1;
 }

 if (!state && (chip->intr & 0x30)) {
  chip->intr &= ~0x30;
  ret = i2c_smbus_write_byte_data(chip->client,
      TSL2563_CMD | TSL2563_REG_INT,
      chip->intr);
  chip->int_enabled = 0;

  schedule_delayed_work(&chip->poweroff_work, 5 * HZ);
 }
out:
 mutex_unlock(&chip->lock);

 return ret;
}
