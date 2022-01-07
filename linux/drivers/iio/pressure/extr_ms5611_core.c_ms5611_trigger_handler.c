
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ms5611_state {int lock; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
typedef int s32 ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct ms5611_state* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,int ) ;
 int iio_trigger_notify_done (int ) ;
 int ms5611_read_temp_and_pressure (struct iio_dev*,int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static irqreturn_t ms5611_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct ms5611_state *st = iio_priv(indio_dev);
 s32 buf[4];
 int ret;

 mutex_lock(&st->lock);
 ret = ms5611_read_temp_and_pressure(indio_dev, &buf[1], &buf[0]);
 mutex_unlock(&st->lock);
 if (ret < 0)
  goto err;

 iio_push_to_buffers_with_timestamp(indio_dev, buf,
        iio_get_time_ns(indio_dev));

err:
 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
