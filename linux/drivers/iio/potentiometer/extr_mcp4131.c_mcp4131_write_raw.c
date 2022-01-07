
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mcp4131_data {int* buf; int lock; int spi; TYPE_1__* cfg; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct TYPE_2__ {int max_pos; } ;


 int EINVAL ;

 int MCP4131_WIPER_SHIFT ;
 int MCP4131_WRITE ;
 struct mcp4131_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_write (int ,int*,int) ;

__attribute__((used)) static int mcp4131_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 int err;
 struct mcp4131_data *data = iio_priv(indio_dev);
 int address = chan->channel << MCP4131_WIPER_SHIFT;

 switch (mask) {
 case 128:
  if (val > data->cfg->max_pos || val < 0)
   return -EINVAL;
  break;

 default:
  return -EINVAL;
 }

 mutex_lock(&data->lock);

 data->buf[0] = address << MCP4131_WIPER_SHIFT;
 data->buf[0] |= MCP4131_WRITE | (val >> 8);
 data->buf[1] = val & 0xFF;

 err = spi_write(data->spi, data->buf, 2);
 mutex_unlock(&data->lock);

 return err;
}
