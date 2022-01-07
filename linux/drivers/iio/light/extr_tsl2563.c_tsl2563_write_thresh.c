
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tsl2563_chip {int high_thres; int low_thres; int lock; int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_info { ____Placeholder_iio_event_info } iio_event_info ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int IIO_EV_DIR_RISING ;
 int TSL2563_CMD ;
 int TSL2563_REG_HIGHLOW ;
 int TSL2563_REG_LOWLOW ;
 int i2c_smbus_write_byte_data (int ,int,int) ;
 struct tsl2563_chip* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int tsl2563_write_thresh(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, enum iio_event_type type,
 enum iio_event_direction dir, enum iio_event_info info, int val,
 int val2)
{
 struct tsl2563_chip *chip = iio_priv(indio_dev);
 int ret;
 u8 address;

 if (dir == IIO_EV_DIR_RISING)
  address = TSL2563_REG_HIGHLOW;
 else
  address = TSL2563_REG_LOWLOW;
 mutex_lock(&chip->lock);
 ret = i2c_smbus_write_byte_data(chip->client, TSL2563_CMD | address,
     val & 0xFF);
 if (ret)
  goto error_ret;
 ret = i2c_smbus_write_byte_data(chip->client,
     TSL2563_CMD | (address + 1),
     (val >> 8) & 0xFF);
 if (dir == IIO_EV_DIR_RISING)
  chip->high_thres = val;
 else
  chip->low_thres = val;

error_ret:
 mutex_unlock(&chip->lock);

 return ret;
}
