
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp4725_data {int dac_value; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;

 struct mcp4725_data* iio_priv (struct iio_dev*) ;
 int mcp4725_set_value (struct iio_dev*,int) ;

__attribute__((used)) static int mcp4725_write_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int val, int val2, long mask)
{
 struct mcp4725_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 128:
  ret = mcp4725_set_value(indio_dev, val);
  data->dac_value = val;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
