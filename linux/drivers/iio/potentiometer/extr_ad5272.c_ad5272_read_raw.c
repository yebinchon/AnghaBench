
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct ad5272_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {int shift; int kohms; int max_pos; } ;


 int AD5272_RDAC_RD ;
 int EINVAL ;


 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int ad5272_read (struct ad5272_data*,int ,int*) ;
 struct ad5272_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad5272_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 struct ad5272_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129: {
  ret = ad5272_read(data, AD5272_RDAC_RD, val);
  *val = *val >> data->cfg->shift;
  return ret ? ret : IIO_VAL_INT;
 }
 case 128:
  *val = 1000 * data->cfg->kohms;
  *val2 = data->cfg->max_pos;
  return IIO_VAL_FRACTIONAL;
 }

 return -EINVAL;
}
