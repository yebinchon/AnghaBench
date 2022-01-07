
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int groupcounter; int ** groups; } ;


 int iio_trigger_consumer_attr_group ;

void iio_device_register_trigger_consumer(struct iio_dev *indio_dev)
{
 indio_dev->groups[indio_dev->groupcounter++] =
  &iio_trigger_consumer_attr_group;
}
