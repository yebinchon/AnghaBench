
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ina2xx_chip_info {int state_lock; int regmap; TYPE_1__* config; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;
struct TYPE_2__ {int chip_id; } ;


 int EBUSY ;
 int EINVAL ;



 int INA2XX_CONFIG ;
 int INA2XX_SHUNT_VOLTAGE ;
 scalar_t__ iio_buffer_enabled (struct iio_dev*) ;
 struct ina2xx_chip_info* iio_priv (struct iio_dev*) ;
 int ina219_set_int_time_vbus (struct ina2xx_chip_info*,int,unsigned int*) ;
 int ina219_set_int_time_vshunt (struct ina2xx_chip_info*,int,unsigned int*) ;
 int ina219_set_vbus_range_denom (struct ina2xx_chip_info*,int,unsigned int*) ;
 int ina219_set_vshunt_pga_gain (struct ina2xx_chip_info*,int,unsigned int*) ;
 int ina226 ;
 int ina226_set_average (struct ina2xx_chip_info*,int,unsigned int*) ;
 int ina226_set_int_time_vbus (struct ina2xx_chip_info*,int,unsigned int*) ;
 int ina226_set_int_time_vshunt (struct ina2xx_chip_info*,int,unsigned int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int ina2xx_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int val, int val2, long mask)
{
 struct ina2xx_chip_info *chip = iio_priv(indio_dev);
 unsigned int config, tmp;
 int ret;

 if (iio_buffer_enabled(indio_dev))
  return -EBUSY;

 mutex_lock(&chip->state_lock);

 ret = regmap_read(chip->regmap, INA2XX_CONFIG, &config);
 if (ret)
  goto err;

 tmp = config;

 switch (mask) {
 case 128:
  ret = ina226_set_average(chip, val, &tmp);
  break;

 case 129:
  if (chip->config->chip_id == ina226) {
   if (chan->address == INA2XX_SHUNT_VOLTAGE)
    ret = ina226_set_int_time_vshunt(chip, val2,
         &tmp);
   else
    ret = ina226_set_int_time_vbus(chip, val2,
              &tmp);
  } else {
   if (chan->address == INA2XX_SHUNT_VOLTAGE)
    ret = ina219_set_int_time_vshunt(chip, val2,
         &tmp);
   else
    ret = ina219_set_int_time_vbus(chip, val2,
              &tmp);
  }
  break;

 case 130:
  if (chan->address == INA2XX_SHUNT_VOLTAGE)
   ret = ina219_set_vshunt_pga_gain(chip, val * 1000 +
        val2 / 1000, &tmp);
  else
   ret = ina219_set_vbus_range_denom(chip, val, &tmp);
  break;

 default:
  ret = -EINVAL;
 }

 if (!ret && (tmp != config))
  ret = regmap_write(chip->regmap, INA2XX_CONFIG, tmp);
err:
 mutex_unlock(&chip->state_lock);

 return ret;
}
