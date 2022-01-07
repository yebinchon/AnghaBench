
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mcp4131_data {int* buf; TYPE_1__* cfg; int lock; int spi; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct TYPE_2__ {int kohms; int max_pos; } ;


 int EINVAL ;
 int EIO ;


 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int MCP4131_CMDERR (int*) ;
 int MCP4131_RAW (int*) ;
 int MCP4131_READ ;
 int MCP4131_WIPER_SHIFT ;
 struct mcp4131_data* iio_priv (struct iio_dev*) ;
 int mcp4131_read (int ,int*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mcp4131_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 int err;
 struct mcp4131_data *data = iio_priv(indio_dev);
 int address = chan->channel;

 switch (mask) {
 case 129:
  mutex_lock(&data->lock);

  data->buf[0] = (address << MCP4131_WIPER_SHIFT) | MCP4131_READ;
  data->buf[1] = 0;

  err = mcp4131_read(data->spi, data->buf, 2);
  if (err) {
   mutex_unlock(&data->lock);
   return err;
  }


  if (!MCP4131_CMDERR(data->buf)) {
   mutex_unlock(&data->lock);
   return -EIO;
  }

  *val = MCP4131_RAW(data->buf);
  mutex_unlock(&data->lock);

  return IIO_VAL_INT;

 case 128:
  *val = 1000 * data->cfg->kohms;
  *val2 = data->cfg->max_pos;
  return IIO_VAL_FRACTIONAL;
 }

 return -EINVAL;
}
