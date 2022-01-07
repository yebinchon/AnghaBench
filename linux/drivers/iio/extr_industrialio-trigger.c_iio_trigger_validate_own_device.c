
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ parent; } ;
struct iio_trigger {TYPE_2__ dev; } ;
struct TYPE_3__ {scalar_t__ parent; } ;
struct iio_dev {TYPE_1__ dev; } ;


 int EINVAL ;

int iio_trigger_validate_own_device(struct iio_trigger *trig,
 struct iio_dev *indio_dev)
{
 if (indio_dev->dev.parent != trig->dev.parent)
  return -EINVAL;
 return 0;
}
