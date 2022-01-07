
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsl2772_chip {int tsl2772_chip_status; } ;
struct iio_dev {int dummy; } ;


 int TSL2772_CHIP_SUSPENDED ;
 struct tsl2772_chip* iio_priv (struct iio_dev*) ;
 int tsl2772_write_control_reg (struct tsl2772_chip*,int) ;

__attribute__((used)) static int tsl2772_chip_off(struct iio_dev *indio_dev)
{
 struct tsl2772_chip *chip = iio_priv(indio_dev);


 chip->tsl2772_chip_status = TSL2772_CHIP_SUSPENDED;
 return tsl2772_write_control_reg(chip, 0x00);
}
