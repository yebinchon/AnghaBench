
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dev; } ;


 int put_device (int *) ;

void iio_trigger_free(struct iio_trigger *trig)
{
 if (trig)
  put_device(&trig->dev);
}
