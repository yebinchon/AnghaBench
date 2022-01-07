
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct bh1780_data {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int BH1780_INTERVAL ;
 int BH1780_REG_DLOW ;
 int EINVAL ;



 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int bh1780_read_word (struct bh1780_data*,int ) ;
 struct bh1780_data* iio_priv (struct iio_dev*) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;

__attribute__((used)) static int bh1780_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 struct bh1780_data *bh1780 = iio_priv(indio_dev);
 int value;

 switch (mask) {
 case 129:
  switch (chan->type) {
  case 128:
   pm_runtime_get_sync(&bh1780->client->dev);
   value = bh1780_read_word(bh1780, BH1780_REG_DLOW);
   if (value < 0)
    return value;
   pm_runtime_mark_last_busy(&bh1780->client->dev);
   pm_runtime_put_autosuspend(&bh1780->client->dev);
   *val = value;

   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 130:
  *val = 0;
  *val2 = BH1780_INTERVAL * 1000;
  return IIO_VAL_INT_PLUS_MICRO;
 default:
  return -EINVAL;
 }
}
