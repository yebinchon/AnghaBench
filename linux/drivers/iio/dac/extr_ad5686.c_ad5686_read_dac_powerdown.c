
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct ad5686_state {int pwr_down_mask; } ;
typedef int ssize_t ;


 struct ad5686_state* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t ad5686_read_dac_powerdown(struct iio_dev *indio_dev,
  uintptr_t private, const struct iio_chan_spec *chan, char *buf)
{
 struct ad5686_state *st = iio_priv(indio_dev);

 return sprintf(buf, "%d\n", !!(st->pwr_down_mask &
           (0x3 << (chan->channel * 2))));
}
