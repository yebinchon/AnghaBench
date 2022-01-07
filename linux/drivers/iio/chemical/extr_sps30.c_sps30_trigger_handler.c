
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sps30_state {int lock; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
typedef int s32 ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct sps30_state* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,int ) ;
 int iio_trigger_notify_done (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sps30_do_meas (struct sps30_state*,int *,int) ;

__attribute__((used)) static irqreturn_t sps30_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct sps30_state *state = iio_priv(indio_dev);
 int ret;
 s32 data[4 + 2];

 mutex_lock(&state->lock);
 ret = sps30_do_meas(state, data, 4);
 mutex_unlock(&state->lock);
 if (ret)
  goto err;

 iio_push_to_buffers_with_timestamp(indio_dev, data,
        iio_get_time_ns(indio_dev));
err:
 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
