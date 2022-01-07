
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct adf4371_state {int regmap; } ;


 struct adf4371_state* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,unsigned int,unsigned int*) ;
 int regmap_write (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int adf4371_reg_access(struct iio_dev *indio_dev,
         unsigned int reg,
         unsigned int writeval,
         unsigned int *readval)
{
 struct adf4371_state *st = iio_priv(indio_dev);

 if (readval)
  return regmap_read(st->regmap, reg, readval);
 else
  return regmap_write(st->regmap, reg, writeval);
}
