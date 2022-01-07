
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_dac {TYPE_1__* common; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int regmap; } ;


 struct stm32_dac* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;
 int regmap_write (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int stm32_dac_debugfs_reg_access(struct iio_dev *indio_dev,
     unsigned reg, unsigned writeval,
     unsigned *readval)
{
 struct stm32_dac *dac = iio_priv(indio_dev);

 if (!readval)
  return regmap_write(dac->common->regmap, reg, writeval);
 else
  return regmap_read(dac->common->regmap, reg, readval);
}
