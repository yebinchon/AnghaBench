
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mpl3115_data {int lock; int client; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; int active_scan_mask; } ;
typedef int irqreturn_t ;
typedef int buffer ;


 int IRQ_HANDLED ;
 int MPL3115_OUT_PRESS ;
 int MPL3115_OUT_TEMP ;
 int i2c_smbus_read_i2c_block_data (int ,int ,int,int *) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct mpl3115_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,int ) ;
 int iio_trigger_notify_done (int ) ;
 int memset (int *,int ,int) ;
 int mpl3115_request (struct mpl3115_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static irqreturn_t mpl3115_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct mpl3115_data *data = iio_priv(indio_dev);
 u8 buffer[16];
 int ret, pos = 0;

 mutex_lock(&data->lock);
 ret = mpl3115_request(data);
 if (ret < 0) {
  mutex_unlock(&data->lock);
  goto done;
 }

 memset(buffer, 0, sizeof(buffer));
 if (test_bit(0, indio_dev->active_scan_mask)) {
  ret = i2c_smbus_read_i2c_block_data(data->client,
   MPL3115_OUT_PRESS, 3, &buffer[pos]);
  if (ret < 0) {
   mutex_unlock(&data->lock);
   goto done;
  }
  pos += 4;
 }

 if (test_bit(1, indio_dev->active_scan_mask)) {
  ret = i2c_smbus_read_i2c_block_data(data->client,
   MPL3115_OUT_TEMP, 2, &buffer[pos]);
  if (ret < 0) {
   mutex_unlock(&data->lock);
   goto done;
  }
 }
 mutex_unlock(&data->lock);

 iio_push_to_buffers_with_timestamp(indio_dev, buffer,
  iio_get_time_ns(indio_dev));

done:
 iio_trigger_notify_done(indio_dev->trig);
 return IRQ_HANDLED;
}
