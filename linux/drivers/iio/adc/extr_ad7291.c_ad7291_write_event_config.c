
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; scalar_t__ channel; } ;
struct ad7291_chip_info {unsigned int command; unsigned int c_mask; int state_lock; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 unsigned int AD7291_AUTOCYCLE ;
 int AD7291_COMMAND ;
 unsigned int BIT (scalar_t__) ;
 int EINVAL ;

 int ad7291_i2c_write (struct ad7291_chip_info*,int ,unsigned int) ;
 struct ad7291_chip_info* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ad7291_write_event_config(struct iio_dev *indio_dev,
         const struct iio_chan_spec *chan,
         enum iio_event_type type,
         enum iio_event_direction dir,
         int state)
{
 int ret = 0;
 struct ad7291_chip_info *chip = iio_priv(indio_dev);
 unsigned int mask;
 u16 regval;

 mutex_lock(&chip->state_lock);
 regval = chip->command;






 mask = BIT(15 - chan->channel);

 switch (chan->type) {
 case 128:
  if ((!state) && (chip->c_mask & mask))
   chip->c_mask &= ~mask;
  else if (state && (!(chip->c_mask & mask)))
   chip->c_mask |= mask;
  else
   break;

  regval &= ~AD7291_AUTOCYCLE;
  regval |= chip->c_mask;
  if (chip->c_mask)
   regval |= AD7291_AUTOCYCLE;

  ret = ad7291_i2c_write(chip, AD7291_COMMAND, regval);
  if (ret < 0)
   goto error_ret;

  chip->command = regval;
  break;
 default:
  ret = -EINVAL;
 }

error_ret:
 mutex_unlock(&chip->state_lock);
 return ret;
}
