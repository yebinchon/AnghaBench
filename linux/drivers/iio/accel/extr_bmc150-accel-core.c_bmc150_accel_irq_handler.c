
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct bmc150_accel_data {scalar_t__ fifo_mode; scalar_t__ ev_enable_state; TYPE_1__* triggers; int timestamp; int old_timestamp; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int indio_trig; scalar_t__ enabled; } ;


 int BMC150_ACCEL_TRIGGERS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct bmc150_accel_data* iio_priv (struct iio_dev*) ;
 int iio_trigger_poll (int ) ;

__attribute__((used)) static irqreturn_t bmc150_accel_irq_handler(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct bmc150_accel_data *data = iio_priv(indio_dev);
 bool ack = 0;
 int i;

 data->old_timestamp = data->timestamp;
 data->timestamp = iio_get_time_ns(indio_dev);

 for (i = 0; i < BMC150_ACCEL_TRIGGERS; i++) {
  if (data->triggers[i].enabled) {
   iio_trigger_poll(data->triggers[i].indio_trig);
   ack = 1;
   break;
  }
 }

 if (data->ev_enable_state || data->fifo_mode)
  return IRQ_WAKE_THREAD;

 if (ack)
  return IRQ_HANDLED;

 return IRQ_NONE;
}
