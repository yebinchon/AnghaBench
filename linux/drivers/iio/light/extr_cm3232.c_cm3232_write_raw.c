
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct cm3232_chip {struct cm3232_als_info* als_info; } ;
struct cm3232_als_info {int calibscale; } ;


 int EINVAL ;


 int cm3232_write_als_it (struct cm3232_chip*,int,int) ;
 struct cm3232_chip* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int cm3232_write_raw(struct iio_dev *indio_dev,
   struct iio_chan_spec const *chan,
   int val, int val2, long mask)
{
 struct cm3232_chip *chip = iio_priv(indio_dev);
 struct cm3232_als_info *als_info = chip->als_info;

 switch (mask) {
 case 129:
  als_info->calibscale = val;
  return 0;
 case 128:
  return cm3232_write_als_it(chip, val, val2);
 }

 return -EINVAL;
}
