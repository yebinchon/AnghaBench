
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {TYPE_1__* trig; } ;
struct TYPE_2__ {int attached_own_device; } ;



bool iio_trigger_using_own(struct iio_dev *indio_dev)
{
 return indio_dev->trig->attached_own_device;
}
