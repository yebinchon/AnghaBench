
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct ad7606_state {int gpio_convst; } ;


 int gpiod_set_value (int ,int) ;
 struct ad7606_state* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_postenable (struct iio_dev*) ;

__attribute__((used)) static int ad7606_buffer_postenable(struct iio_dev *indio_dev)
{
 struct ad7606_state *st = iio_priv(indio_dev);

 iio_triggered_buffer_postenable(indio_dev);
 gpiod_set_value(st->gpio_convst, 1);

 return 0;
}
