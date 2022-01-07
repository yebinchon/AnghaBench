
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_poll_func {int indio_dev; int timestamp; } ;
typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 int iio_get_time_ns (int ) ;

irqreturn_t iio_pollfunc_store_time(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 pf->timestamp = iio_get_time_ns(pf->indio_dev);
 return IRQ_WAKE_THREAD;
}
