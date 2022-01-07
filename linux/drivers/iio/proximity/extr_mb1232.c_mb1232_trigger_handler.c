
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb1232_data {int dummy; } ;
struct iio_poll_func {int timestamp; struct iio_dev* indio_dev; } ;
struct iio_dev {int trig; } ;
typedef scalar_t__ s16 ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct mb1232_data* iio_priv (struct iio_dev*) ;
 int iio_push_to_buffers_with_timestamp (struct iio_dev*,scalar_t__*,int ) ;
 int iio_trigger_notify_done (int ) ;
 scalar_t__ mb1232_read_distance (struct mb1232_data*) ;

__attribute__((used)) static irqreturn_t mb1232_trigger_handler(int irq, void *p)
{
 struct iio_poll_func *pf = p;
 struct iio_dev *indio_dev = pf->indio_dev;
 struct mb1232_data *data = iio_priv(indio_dev);




 s16 buffer[8] = { 0 };

 buffer[0] = mb1232_read_distance(data);
 if (buffer[0] < 0)
  goto err;

 iio_push_to_buffers_with_timestamp(indio_dev, buffer, pf->timestamp);

err:
 iio_trigger_notify_done(indio_dev->trig);
 return IRQ_HANDLED;
}
