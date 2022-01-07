
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct bma220_data {int* tx_buf; int lock; TYPE_1__* spi_device; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (int**) ;
 int BMA220_REG_RANGE ;
 int EINVAL ;

 int** bma220_scale_table ;
 int dev_err (int *,char*) ;
 struct bma220_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spi_write (TYPE_1__*,int*,int) ;

__attribute__((used)) static int bma220_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int val, int val2, long mask)
{
 int i;
 int ret;
 int index = -1;
 struct bma220_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  for (i = 0; i < ARRAY_SIZE(bma220_scale_table); i++)
   if (val == bma220_scale_table[i][0] &&
       val2 == bma220_scale_table[i][1]) {
    index = i;
    break;
   }
  if (index < 0)
   return -EINVAL;

  mutex_lock(&data->lock);
  data->tx_buf[0] = BMA220_REG_RANGE;
  data->tx_buf[1] = index;
  ret = spi_write(data->spi_device, data->tx_buf,
    sizeof(data->tx_buf));
  if (ret < 0)
   dev_err(&data->spi_device->dev,
    "failed to set measurement range\n");
  mutex_unlock(&data->lock);

  return 0;
 }

 return -EINVAL;
}
