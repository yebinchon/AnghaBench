
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iio_poll_func {struct iio_dev* indio_dev; } ;
struct iio_dev {int masklength; int trig; int active_scan_mask; } ;
typedef int s64 ;
typedef int irqreturn_t ;


 int ADS8688_MAX_CHANNELS ;
 int IRQ_HANDLED ;
 int ads8688_read (struct iio_dev*,int) ;
 int iio_get_time_ns (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,int ) ;
 int iio_trigger_notify_done (int ) ;
 int test_bit (int,int ) ;

__attribute__((used)) static irqreturn_t ads8688_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 u16 buffer[ADS8688_MAX_CHANNELS + sizeof(s64)/sizeof(u16)];
 int i, j = 0;

 for (i = 0; i < indio_dev->masklength; i++) {
  if (!test_bit(i, indio_dev->active_scan_mask))
   continue;
  buffer[j] = ads8688_read(indio_dev, i);
  j++;
 }

 iio_push_to_buffers_with_timestamp(indio_dev, buffer,
   iio_get_time_ns(indio_dev));

 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
