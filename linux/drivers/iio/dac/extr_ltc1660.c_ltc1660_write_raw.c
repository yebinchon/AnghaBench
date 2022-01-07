
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ltc1660_priv {int* value; int regmap; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int shift; int realbits; } ;
struct iio_chan_spec {size_t channel; TYPE_1__ scan_type; } ;


 int EINVAL ;
 int GENMASK (int ,int ) ;

 struct ltc1660_priv* iio_priv (struct iio_dev*) ;
 int regmap_write (int ,size_t,int) ;

__attribute__((used)) static int ltc1660_write_raw(struct iio_dev *indio_dev,
  struct iio_chan_spec const *chan,
  int val,
  int val2,
  long mask)
{
 struct ltc1660_priv *priv = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 128:
  if (val2 != 0)
   return -EINVAL;

  if (val < 0 || val > GENMASK(chan->scan_type.realbits - 1, 0))
   return -EINVAL;

  ret = regmap_write(priv->regmap, chan->channel,
     (val << chan->scan_type.shift));
  if (!ret)
   priv->value[chan->channel] = val;

  return ret;
 default:
  return -EINVAL;
 }
}
