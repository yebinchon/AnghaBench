
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp41010_data {int* buf; int* value; int lock; int spi; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;


 int EINVAL ;
 long IIO_CHAN_INFO_RAW ;
 int MCP41010_WIPER_CHANNEL ;
 int MCP41010_WIPER_MAX ;
 int MCP41010_WRITE ;
 struct mcp41010_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_write (int ,int*,int) ;

__attribute__((used)) static int mcp41010_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 int err;
 struct mcp41010_data *data = iio_priv(indio_dev);
 int channel = chan->channel;

 if (mask != IIO_CHAN_INFO_RAW)
  return -EINVAL;

 if (val > MCP41010_WIPER_MAX || val < 0)
  return -EINVAL;

 mutex_lock(&data->lock);

 data->buf[0] = MCP41010_WIPER_CHANNEL << channel;
 data->buf[0] |= MCP41010_WRITE;
 data->buf[1] = val & 0xff;

 err = spi_write(data->spi, data->buf, sizeof(data->buf));
 if (!err)
  data->value[channel] = val;

 mutex_unlock(&data->lock);

 return err;
}
