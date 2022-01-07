
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pms7003_frame {int data; } ;
struct pms7003_state {int lock; struct pms7003_frame frame; } ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
typedef int irqreturn_t ;


 int CMD_READ_PASSIVE ;
 int IRQ_HANDLED ;
 size_t PM1 ;
 size_t PM10 ;
 size_t PM2P5 ;
 int PMS7003_PM10_OFFSET ;
 int PMS7003_PM1_OFFSET ;
 int PMS7003_PM2P5_OFFSET ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct pms7003_state* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,int ) ;
 int iio_trigger_notify_done (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pms7003_do_cmd (struct pms7003_state*,int ) ;
 int pms7003_get_pm (int ) ;

__attribute__((used)) static irqreturn_t pms7003_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct pms7003_state *state = iio_priv(indio_dev);
 struct pms7003_frame *frame = &state->frame;
 u16 data[3 + 1 + 4];
 int ret;

 mutex_lock(&state->lock);
 ret = pms7003_do_cmd(state, CMD_READ_PASSIVE);
 if (ret) {
  mutex_unlock(&state->lock);
  goto err;
 }

 data[PM1] = pms7003_get_pm(frame->data + PMS7003_PM1_OFFSET);
 data[PM2P5] = pms7003_get_pm(frame->data + PMS7003_PM2P5_OFFSET);
 data[PM10] = pms7003_get_pm(frame->data + PMS7003_PM10_OFFSET);
 mutex_unlock(&state->lock);

 iio_push_to_buffers_with_timestamp(indio_dev, data,
        iio_get_time_ns(indio_dev));
err:
 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
