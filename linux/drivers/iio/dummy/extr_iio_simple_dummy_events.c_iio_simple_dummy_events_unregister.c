
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dummy_state {int event_irq; } ;
struct iio_dev {int dummy; } ;


 int free_irq (int ,struct iio_dev*) ;
 int iio_dummy_evgen_release_irq (int ) ;
 struct iio_dummy_state* iio_priv (struct iio_dev*) ;

void iio_simple_dummy_events_unregister(struct iio_dev *indio_dev)
{
 struct iio_dummy_state *st = iio_priv(indio_dev);

 free_irq(st->event_irq, indio_dev);

 iio_dummy_evgen_release_irq(st->event_irq);
}
