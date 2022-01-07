
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ina2xx_chip_info {int regmap; } ;
struct iio_dev {int dummy; } ;


 struct ina2xx_chip_info* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;
 int regmap_write (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int ina2xx_debug_reg(struct iio_dev *indio_dev,
       unsigned reg, unsigned writeval, unsigned *readval)
{
 struct ina2xx_chip_info *chip = iio_priv(indio_dev);

 if (!readval)
  return regmap_write(chip->regmap, reg, writeval);

 return regmap_read(chip->regmap, reg, readval);
}
