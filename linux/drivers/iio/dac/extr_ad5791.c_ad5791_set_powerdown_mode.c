
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct ad5791_state {unsigned int pwr_down_mode; } ;


 struct ad5791_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad5791_set_powerdown_mode(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, unsigned int mode)
{
 struct ad5791_state *st = iio_priv(indio_dev);

 st->pwr_down_mode = mode;

 return 0;
}
