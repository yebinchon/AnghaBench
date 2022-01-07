
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct ad5592r_state {int** scale_avail; } ;
typedef int ssize_t ;


 struct ad5592r_state* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*,int,int,int,int) ;

__attribute__((used)) static ssize_t ad5592r_show_scale_available(struct iio_dev *iio_dev,
        uintptr_t private,
        const struct iio_chan_spec *chan,
        char *buf)
{
 struct ad5592r_state *st = iio_priv(iio_dev);

 return sprintf(buf, "%d.%09u %d.%09u\n",
  st->scale_avail[0][0], st->scale_avail[0][1],
  st->scale_avail[1][0], st->scale_avail[1][1]);
}
