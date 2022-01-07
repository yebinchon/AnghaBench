
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; int * active_scan_mask; int scan_bytes; } ;
struct cros_ec_sensors_core_state {int (* read_ec_sensors_data ) (struct iio_dev*,int ,int *) ;int cmd_lock; scalar_t__ samples; } ;
typedef int s16 ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct cros_ec_sensors_core_state* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,scalar_t__,int ) ;
 int iio_trigger_notify_done (int ) ;
 int memset (scalar_t__,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct iio_dev*,int ,int *) ;

irqreturn_t cros_ec_sensors_capture(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct cros_ec_sensors_core_state *st = iio_priv(indio_dev);
 int ret;

 mutex_lock(&st->cmd_lock);


 memset(st->samples, 0, indio_dev->scan_bytes);


 ret = st->read_ec_sensors_data(indio_dev,
           *(indio_dev->active_scan_mask),
           (s16 *)st->samples);
 if (ret < 0)
  goto done;

 iio_push_to_buffers_with_timestamp(indio_dev, st->samples,
        iio_get_time_ns(indio_dev));

done:




 iio_trigger_notify_done(indio_dev->trig);

 mutex_unlock(&st->cmd_lock);

 return IRQ_HANDLED;
}
