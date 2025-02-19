
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max5821_data {unsigned int* powerdown_mode; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;


 struct max5821_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int max5821_set_powerdown_mode(struct iio_dev *indio_dev,
          const struct iio_chan_spec *chan,
          unsigned int mode)
{
 struct max5821_data *st = iio_priv(indio_dev);

 st->powerdown_mode[chan->channel] = mode;

 return 0;
}
