
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpa2326_private {int timestamp; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_WAKE_THREAD ;
 scalar_t__ iio_buffer_enabled (struct iio_dev*) ;
 int iio_get_time_ns (struct iio_dev*) ;
 scalar_t__ iio_priv (struct iio_dev*) ;

__attribute__((used)) static irqreturn_t zpa2326_handle_irq(int irq, void *data)
{
 struct iio_dev *indio_dev = data;

 if (iio_buffer_enabled(indio_dev)) {

  ((struct zpa2326_private *)
   iio_priv(indio_dev))->timestamp = iio_get_time_ns(indio_dev);
 }

 return IRQ_WAKE_THREAD;
}
