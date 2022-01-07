
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mcp41010_data {int* value; TYPE_1__* cfg; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct TYPE_2__ {int kohms; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int MCP41010_WIPER_MAX ;
 struct mcp41010_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int mcp41010_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct mcp41010_data *data = iio_priv(indio_dev);
 int channel = chan->channel;

 switch (mask) {
 case 129:
  *val = data->value[channel];
  return IIO_VAL_INT;

 case 128:
  *val = 1000 * data->cfg->kohms;
  *val2 = MCP41010_WIPER_MAX;
  return IIO_VAL_FRACTIONAL;
 }

 return -EINVAL;
}
