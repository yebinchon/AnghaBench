
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {TYPE_1__* event_interface; } ;
struct TYPE_2__ {int wait; } ;


 int wake_up (int *) ;

void iio_device_wakeup_eventset(struct iio_dev *indio_dev)
{
 if (indio_dev->event_interface == ((void*)0))
  return;
 wake_up(&indio_dev->event_interface->wait);
}
