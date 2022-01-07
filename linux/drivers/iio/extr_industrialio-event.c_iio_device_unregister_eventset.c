
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev {TYPE_2__* event_interface; } ;
struct TYPE_3__ {TYPE_2__* attrs; } ;
struct TYPE_4__ {TYPE_1__ group; int dev_attr_list; } ;


 int iio_free_chan_devattr_list (int *) ;
 int kfree (TYPE_2__*) ;

void iio_device_unregister_eventset(struct iio_dev *indio_dev)
{
 if (indio_dev->event_interface == ((void*)0))
  return;
 iio_free_chan_devattr_list(&indio_dev->event_interface->dev_attr_list);
 kfree(indio_dev->event_interface->group.attrs);
 kfree(indio_dev->event_interface);
}
