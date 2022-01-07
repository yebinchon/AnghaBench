
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ina2xx_chip_info {int regmap; } ;


 int INA2XX_CONFIG ;
 int ina2xx_set_calibration (struct ina2xx_chip_info*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int ina2xx_init(struct ina2xx_chip_info *chip, unsigned int config)
{
 int ret = regmap_write(chip->regmap, INA2XX_CONFIG, config);
 if (ret)
  return ret;

 return ina2xx_set_calibration(chip);
}
