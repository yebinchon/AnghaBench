
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct max1363_state {int (* recv ) (struct i2c_client*,int*,int) ;TYPE_1__* chip_info; int * current_mode; scalar_t__ monitor_on; struct i2c_client* client; } ;
struct iio_dev {int mlock; } ;
struct iio_chan_spec {size_t address; } ;
struct i2c_client {int dummy; } ;
typedef int s32 ;
struct TYPE_2__ {int bits; } ;


 int EBUSY ;
 scalar_t__ iio_buffer_enabled (struct iio_dev*) ;
 struct max1363_state* iio_priv (struct iio_dev*) ;
 int * max1363_mode_table ;
 int max1363_set_scan_mode (struct max1363_state*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct i2c_client*,int*,int) ;
 int stub2 (struct i2c_client*,int*,int) ;

__attribute__((used)) static int max1363_read_single_chan(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int *val,
        long m)
{
 int ret = 0;
 s32 data;
 u8 rxbuf[2];
 struct max1363_state *st = iio_priv(indio_dev);
 struct i2c_client *client = st->client;

 mutex_lock(&indio_dev->mlock);







 if (st->monitor_on || iio_buffer_enabled(indio_dev)) {
  ret = -EBUSY;
  goto error_ret;
 }


 if (st->current_mode != &max1363_mode_table[chan->address]) {

  st->current_mode = &max1363_mode_table[chan->address];
  ret = max1363_set_scan_mode(st);
  if (ret < 0)
   goto error_ret;
 }
 if (st->chip_info->bits != 8) {

  data = st->recv(client, rxbuf, 2);
  if (data < 0) {
   ret = data;
   goto error_ret;
  }
  data = (rxbuf[1] | rxbuf[0] << 8) &
    ((1 << st->chip_info->bits) - 1);
 } else {

  data = st->recv(client, rxbuf, 1);
  if (data < 0) {
   ret = data;
   goto error_ret;
  }
  data = rxbuf[0];
 }
 *val = data;
error_ret:
 mutex_unlock(&indio_dev->mlock);
 return ret;

}
