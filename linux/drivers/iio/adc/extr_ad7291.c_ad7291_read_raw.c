
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int channel; } ;
struct ad7291_chip_info {int command; int reg; int client; int state_lock; } ;


 int AD7291_AUTOCYCLE ;
 int AD7291_BITS ;
 int AD7291_COMMAND ;
 int AD7291_T_AVERAGE ;
 int AD7291_T_SENSE ;
 int AD7291_VALUE_MASK ;
 int AD7291_VOLTAGE ;
 int AD7291_VOLTAGE_MASK ;
 int BIT (int ) ;
 int EBUSY ;
 int EINVAL ;




 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;

 int ad7291_i2c_write (struct ad7291_chip_info*,int ,int) ;
 int i2c_smbus_read_word_swapped (int ,int ) ;
 struct ad7291_chip_info* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_get_voltage (int ) ;
 int sign_extend32 (int,int) ;

__attribute__((used)) static int ad7291_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val,
      int *val2,
      long mask)
{
 int ret;
 struct ad7291_chip_info *chip = iio_priv(indio_dev);
 u16 regval;

 switch (mask) {
 case 131:
  switch (chan->type) {
  case 128:
   mutex_lock(&chip->state_lock);

   if (chip->command & AD7291_AUTOCYCLE) {
    mutex_unlock(&chip->state_lock);
    return -EBUSY;
   }

   regval = chip->command & (~AD7291_VOLTAGE_MASK);
   regval |= BIT(15 - chan->channel);
   ret = ad7291_i2c_write(chip, AD7291_COMMAND, regval);
   if (ret < 0) {
    mutex_unlock(&chip->state_lock);
    return ret;
   }

   ret = i2c_smbus_read_word_swapped(chip->client,
         AD7291_VOLTAGE);
   if (ret < 0) {
    mutex_unlock(&chip->state_lock);
    return ret;
   }
   *val = ret & AD7291_VALUE_MASK;
   mutex_unlock(&chip->state_lock);
   return IIO_VAL_INT;
  case 129:

   ret = i2c_smbus_read_word_swapped(chip->client,
         AD7291_T_SENSE);
   if (ret < 0)
    return ret;
   *val = sign_extend32(ret, 11);
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 132:
  ret = i2c_smbus_read_word_swapped(chip->client,
        AD7291_T_AVERAGE);
   if (ret < 0)
    return ret;
   *val = sign_extend32(ret, 11);
   return IIO_VAL_INT;
 case 130:
  switch (chan->type) {
  case 128:
   if (chip->reg) {
    int vref;

    vref = regulator_get_voltage(chip->reg);
    if (vref < 0)
     return vref;
    *val = vref / 1000;
   } else {
    *val = 2500;
   }
   *val2 = AD7291_BITS;
   return IIO_VAL_FRACTIONAL_LOG2;
  case 129:





   *val = 250;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
