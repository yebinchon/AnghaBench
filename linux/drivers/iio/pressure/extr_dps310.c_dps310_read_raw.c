
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct dps310_data {int dummy; } ;


 int EINVAL ;


 int dps310_read_pressure (struct dps310_data*,int*,int*,long) ;
 int dps310_read_temp (struct dps310_data*,int*,int*,long) ;
 struct dps310_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int dps310_read_raw(struct iio_dev *iio,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 struct dps310_data *data = iio_priv(iio);

 switch (chan->type) {
 case 129:
  return dps310_read_pressure(data, val, val2, mask);

 case 128:
  return dps310_read_temp(data, val, val2, mask);

 default:
  return -EINVAL;
 }
}
