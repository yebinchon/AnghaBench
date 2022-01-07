
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc2632_state {int powerdown_cache_mask; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
typedef int ssize_t ;


 struct ltc2632_state* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t ltc2632_read_dac_powerdown(struct iio_dev *indio_dev,
       uintptr_t private,
       const struct iio_chan_spec *chan,
       char *buf)
{
 struct ltc2632_state *st = iio_priv(indio_dev);

 return sprintf(buf, "%d\n",
         !!(st->powerdown_cache_mask & (1 << chan->channel)));
}
