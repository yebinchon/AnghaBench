
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_poll_func {int timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 int iio_get_time_ns (struct iio_dev*) ;
 int iio_trigger_using_own (struct iio_dev*) ;

__attribute__((used)) static irqreturn_t rpr0521_trigger_consumer_store_time(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;


 if (!iio_trigger_using_own(indio_dev))
  pf->timestamp = iio_get_time_ns(indio_dev);

 return IRQ_WAKE_THREAD;
}
