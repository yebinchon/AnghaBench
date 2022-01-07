
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ina2xx_chip_info {int avg; int int_time_vshunt; int int_time_vbus; int shunt_resistor_uohm; int pga_gain_vshunt; int range_vbus; TYPE_1__* config; int regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;
typedef int s16 ;
struct TYPE_2__ {int bus_voltage_shift; int shunt_voltage_lsb; int bus_voltage_lsb; int power_lsb_factor; } ;


 int DIV_ROUND_CLOSEST (int,int ) ;
 int EINVAL ;






 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;




 int SAMPLING_PERIOD (struct ina2xx_chip_info*) ;
 struct ina2xx_chip_info* iio_priv (struct iio_dev*) ;
 int is_signed_reg (int) ;
 int regmap_read (int ,int,unsigned int*) ;

__attribute__((used)) static int ina2xx_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 int ret;
 struct ina2xx_chip_info *chip = iio_priv(indio_dev);
 unsigned int regval;

 switch (mask) {
 case 134:
  ret = regmap_read(chip->regmap, chan->address, &regval);
  if (ret)
   return ret;

  if (is_signed_reg(chan->address))
   *val = (s16) regval;
  else
   *val = regval;

  if (chan->address == 131)
   *val >>= chip->config->bus_voltage_shift;

  return IIO_VAL_INT;

 case 135:
  *val = chip->avg;
  return IIO_VAL_INT;

 case 136:
  *val = 0;
  if (chan->address == 128)
   *val2 = chip->int_time_vshunt;
  else
   *val2 = chip->int_time_vbus;

  return IIO_VAL_INT_PLUS_MICRO;

 case 133:




  *val = DIV_ROUND_CLOSEST(1000000, SAMPLING_PERIOD(chip));

  return IIO_VAL_INT;

 case 132:
  switch (chan->address) {
  case 128:

   *val = chip->config->shunt_voltage_lsb;
   *val2 = 1000000;
   return IIO_VAL_FRACTIONAL;

  case 131:

   *val = chip->config->bus_voltage_lsb;
   *val2 = 1000;
   return IIO_VAL_FRACTIONAL;

  case 130:





   *val = chip->config->shunt_voltage_lsb;
   *val2 = chip->shunt_resistor_uohm;
   return IIO_VAL_FRACTIONAL;

  case 129:





   *val = chip->config->power_lsb_factor *
          chip->config->shunt_voltage_lsb;
   *val2 = chip->shunt_resistor_uohm;
   return IIO_VAL_FRACTIONAL;
  }
  return -EINVAL;

 case 137:
  switch (chan->address) {
  case 128:
   *val = chip->pga_gain_vshunt;
   *val2 = 1000;
   return IIO_VAL_FRACTIONAL;

  case 131:
   *val = chip->range_vbus == 32 ? 1 : 2;
   return IIO_VAL_INT;
  }
  return -EINVAL;
 }

 return -EINVAL;
}
