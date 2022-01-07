
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;


 int tsl2772_chip_off (struct iio_dev*) ;

__attribute__((used)) static void tsl2772_chip_off_action(void *data)
{
 struct iio_dev *indio_dev = data;

 tsl2772_chip_off(indio_dev);
}
