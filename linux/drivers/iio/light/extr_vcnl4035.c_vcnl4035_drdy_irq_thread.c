
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcnl4035_data {int drdy_trigger0; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IIO_EV_DIR_EITHER ;
 int IIO_EV_TYPE_THRESH ;
 int IIO_LIGHT ;
 int IIO_UNMOD_EVENT_CODE (int ,int ,int ,int ) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct vcnl4035_data* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;
 int iio_trigger_poll_chained (int ) ;
 scalar_t__ vcnl4035_is_triggered (struct vcnl4035_data*) ;

__attribute__((used)) static irqreturn_t vcnl4035_drdy_irq_thread(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct vcnl4035_data *data = iio_priv(indio_dev);

 if (vcnl4035_is_triggered(data)) {
  iio_push_event(indio_dev, IIO_UNMOD_EVENT_CODE(IIO_LIGHT,
       0,
       IIO_EV_TYPE_THRESH,
       IIO_EV_DIR_EITHER),
    iio_get_time_ns(indio_dev));
  iio_trigger_poll_chained(data->drdy_trigger0);
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
