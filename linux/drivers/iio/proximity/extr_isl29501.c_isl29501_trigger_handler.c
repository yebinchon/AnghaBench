
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isl29501_private {int dummy; } ;
struct iio_poll_func {int timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {unsigned long* active_scan_mask; int trig; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ISL29501_DISTANCE_SCAN_INDEX ;
 int REG_DISTANCE ;
 struct isl29501_private* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,int ) ;
 int iio_trigger_notify_done (int ) ;
 int isl29501_register_read (struct isl29501_private*,int ,int *) ;
 scalar_t__ test_bit (int ,unsigned long const*) ;

__attribute__((used)) static irqreturn_t isl29501_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct isl29501_private *isl29501 = iio_priv(indio_dev);
 const unsigned long *active_mask = indio_dev->active_scan_mask;
 u32 buffer[4] = {};

 if (test_bit(ISL29501_DISTANCE_SCAN_INDEX, active_mask))
  isl29501_register_read(isl29501, REG_DISTANCE, buffer);

 iio_push_to_buffers_with_timestamp(indio_dev, buffer, pf->timestamp);
 iio_trigger_notify_done(indio_dev->trig);

 return IRQ_HANDLED;
}
