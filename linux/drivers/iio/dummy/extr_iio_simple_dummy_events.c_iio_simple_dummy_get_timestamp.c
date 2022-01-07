
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dummy_state {int event_timestamp; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct iio_dummy_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static irqreturn_t iio_simple_dummy_get_timestamp(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct iio_dummy_state *st = iio_priv(indio_dev);

 st->event_timestamp = iio_get_time_ns(indio_dev);
 return IRQ_WAKE_THREAD;
}
