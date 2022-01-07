
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsl2772_chip {int supplies; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 struct tsl2772_chip* iio_priv (struct iio_dev*) ;
 int regulator_bulk_disable (int ,int ) ;
 int tsl2772_chip_off (struct iio_dev*) ;

__attribute__((used)) static int tsl2772_suspend(struct device *dev)
{
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct tsl2772_chip *chip = iio_priv(indio_dev);
 int ret;

 ret = tsl2772_chip_off(indio_dev);
 regulator_bulk_disable(ARRAY_SIZE(chip->supplies), chip->supplies);

 return ret;
}
