
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dummy_state {int event_irq; int regs; } ;
struct iio_dev {int dummy; } ;


 int IRQF_ONESHOT ;
 int iio_dummy_evgen_get_irq () ;
 int iio_dummy_evgen_get_regs (int) ;
 int iio_dummy_evgen_release_irq (int) ;
 struct iio_dummy_state* iio_priv (struct iio_dev*) ;
 int iio_simple_dummy_event_handler ;
 int iio_simple_dummy_get_timestamp ;
 int request_threaded_irq (int,int *,int *,int ,char*,struct iio_dev*) ;

int iio_simple_dummy_events_register(struct iio_dev *indio_dev)
{
 struct iio_dummy_state *st = iio_priv(indio_dev);
 int ret;


 st->event_irq = iio_dummy_evgen_get_irq();
 if (st->event_irq < 0) {
  ret = st->event_irq;
  goto error_ret;
 }
 st->regs = iio_dummy_evgen_get_regs(st->event_irq);

 ret = request_threaded_irq(st->event_irq,
       &iio_simple_dummy_get_timestamp,
       &iio_simple_dummy_event_handler,
       IRQF_ONESHOT,
       "iio_simple_event",
       indio_dev);
 if (ret < 0)
  goto error_free_evgen;
 return 0;

error_free_evgen:
 iio_dummy_evgen_release_irq(st->event_irq);
error_ret:
 return ret;
}
