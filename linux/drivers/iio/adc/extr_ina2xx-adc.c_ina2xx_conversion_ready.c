
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ina2xx_chip_info {int regmap; TYPE_1__* config; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ chip_id; } ;


 unsigned int INA219_CNVR ;
 unsigned int INA226_CVRF ;
 int INA226_MASK_ENABLE ;
 int INA2XX_BUS_VOLTAGE ;
 struct ina2xx_chip_info* iio_priv (struct iio_dev*) ;
 scalar_t__ ina226 ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int ina2xx_conversion_ready(struct iio_dev *indio_dev)
{
 struct ina2xx_chip_info *chip = iio_priv(indio_dev);
 int ret;
 unsigned int alert;
 if (chip->config->chip_id == ina226) {
  ret = regmap_read(chip->regmap,
      INA226_MASK_ENABLE, &alert);
  alert &= INA226_CVRF;
 } else {
  ret = regmap_read(chip->regmap,
      INA2XX_BUS_VOLTAGE, &alert);
  alert &= INA219_CNVR;
 }

 if (ret < 0)
  return ret;

 return !!alert;
}
