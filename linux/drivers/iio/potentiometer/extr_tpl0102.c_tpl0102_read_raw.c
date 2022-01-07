
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tpl0102_data {TYPE_1__* cfg; int regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct TYPE_2__ {int kohms; int * avail; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 struct tpl0102_data* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int tpl0102_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct tpl0102_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 129: {
  int ret = regmap_read(data->regmap, chan->channel, val);

  return ret ? ret : IIO_VAL_INT;
 }
 case 128:
  *val = 1000 * data->cfg->kohms;
  *val2 = data->cfg->avail[2] + 1;
  return IIO_VAL_FRACTIONAL;
 }

 return -EINVAL;
}
