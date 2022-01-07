
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct ad7266_state {int dummy; } ;


 int ad7266_wakeup (struct ad7266_state*) ;
 struct ad7266_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad7266_preenable(struct iio_dev *indio_dev)
{
 struct ad7266_state *st = iio_priv(indio_dev);
 return ad7266_wakeup(st);
}
