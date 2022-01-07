
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct itg3200 {int i2c; } ;
struct iio_poll_func {int timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
typedef int s64 ;
typedef int irqreturn_t ;
typedef int __be16 ;


 int IRQ_HANDLED ;
 int ITG3200_SCAN_ELEMENTS ;
 struct itg3200* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,int *,int ) ;
 int iio_trigger_notify_done (int ) ;
 int itg3200_read_all_channels (int ,int *) ;

__attribute__((used)) static irqreturn_t itg3200_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct itg3200 *st = iio_priv(indio_dev);
 __be16 buf[ITG3200_SCAN_ELEMENTS + sizeof(s64)/sizeof(u16)];

 int ret = itg3200_read_all_channels(st->i2c, buf);
 if (ret < 0)
  goto error_ret;

 iio_push_to_buffers_with_timestamp(indio_dev, buf, pf->timestamp);

 iio_trigger_notify_done(indio_dev->trig);

error_ret:
 return IRQ_HANDLED;
}
