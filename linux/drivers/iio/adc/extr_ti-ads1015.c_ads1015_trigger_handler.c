
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; int masklength; int active_scan_mask; } ;
struct ads1015_data {int lock; } ;
typedef int s16 ;
typedef int irqreturn_t ;
typedef int buf ;


 int IRQ_HANDLED ;
 int ads1015_get_adc_result (struct ads1015_data*,int,int*) ;
 int find_first_bit (int ,int ) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct ads1015_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int*,int ) ;
 int iio_trigger_notify_done (int ) ;
 int memset (int*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static irqreturn_t ads1015_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct ads1015_data *data = iio_priv(indio_dev);
 s16 buf[8];
 int chan, ret, res;

 memset(buf, 0, sizeof(buf));

 mutex_lock(&data->lock);
 chan = find_first_bit(indio_dev->active_scan_mask,
         indio_dev->masklength);
 ret = ads1015_get_adc_result(data, chan, &res);
 if (ret < 0) {
  mutex_unlock(&data->lock);
  goto err;
 }

 buf[0] = res;
 mutex_unlock(&data->lock);

 iio_push_to_buffers_with_timestamp(indio_dev, buf,
        iio_get_time_ns(indio_dev));

err:
 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
