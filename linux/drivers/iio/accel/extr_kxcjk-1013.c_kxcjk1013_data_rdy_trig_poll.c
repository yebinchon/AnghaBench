
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kxcjk1013_data {scalar_t__ ev_enable_state; int motion_trig; scalar_t__ motion_trigger_on; int dready_trig; scalar_t__ dready_trigger_on; int timestamp; } ;
struct iio_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_WAKE_THREAD ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct kxcjk1013_data* iio_priv (struct iio_dev*) ;
 int iio_trigger_poll (int ) ;

__attribute__((used)) static irqreturn_t kxcjk1013_data_rdy_trig_poll(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct kxcjk1013_data *data = iio_priv(indio_dev);

 data->timestamp = iio_get_time_ns(indio_dev);

 if (data->dready_trigger_on)
  iio_trigger_poll(data->dready_trig);
 else if (data->motion_trigger_on)
  iio_trigger_poll(data->motion_trig);

 if (data->ev_enable_state)
  return IRQ_WAKE_THREAD;
 else
  return IRQ_HANDLED;
}
