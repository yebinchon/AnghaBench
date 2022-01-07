
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {TYPE_1__* buffer; } ;
struct TYPE_2__ {int pollq; } ;


 int wake_up (int *) ;

void iio_buffer_wakeup_poll(struct iio_dev *indio_dev)
{
 if (!indio_dev->buffer)
  return;

 wake_up(&indio_dev->buffer->pollq);
}
