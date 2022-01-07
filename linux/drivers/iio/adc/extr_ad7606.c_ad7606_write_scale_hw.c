
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct ad7606_state {int gpio_range; } ;


 int gpiod_set_value (int ,int) ;
 struct ad7606_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad7606_write_scale_hw(struct iio_dev *indio_dev, int ch, int val)
{
 struct ad7606_state *st = iio_priv(indio_dev);

 gpiod_set_value(st->gpio_range, val);

 return 0;
}
