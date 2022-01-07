
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int pollfunc_event; int modes; } ;


 int INDIO_EVENT_TRIGGERED ;
 int iio_dealloc_pollfunc (int ) ;

void iio_triggered_event_cleanup(struct iio_dev *indio_dev)
{
 indio_dev->modes &= ~INDIO_EVENT_TRIGGERED;
 iio_dealloc_pollfunc(indio_dev->pollfunc_event);
}
