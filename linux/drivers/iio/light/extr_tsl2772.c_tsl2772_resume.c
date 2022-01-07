
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsl2772_chip {int supplies; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int TSL2772_BOOT_MAX_SLEEP_TIME ;
 int TSL2772_BOOT_MIN_SLEEP_TIME ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 struct tsl2772_chip* iio_priv (struct iio_dev*) ;
 int regulator_bulk_enable (int ,int ) ;
 int tsl2772_chip_on (struct iio_dev*) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static int tsl2772_resume(struct device *dev)
{
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct tsl2772_chip *chip = iio_priv(indio_dev);
 int ret;

 ret = regulator_bulk_enable(ARRAY_SIZE(chip->supplies), chip->supplies);
 if (ret < 0)
  return ret;

 usleep_range(TSL2772_BOOT_MIN_SLEEP_TIME, TSL2772_BOOT_MAX_SLEEP_TIME);

 return tsl2772_chip_on(indio_dev);
}
