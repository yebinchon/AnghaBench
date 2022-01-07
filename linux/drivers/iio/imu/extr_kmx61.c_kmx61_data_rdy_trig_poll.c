
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmx61_data {scalar_t__ ev_enable_state; int motion_trig; scalar_t__ motion_trig_on; int mag_dready_trig; scalar_t__ mag_dready_trig_on; int acc_dready_trig; scalar_t__ acc_dready_trig_on; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_WAKE_THREAD ;
 int iio_trigger_poll (int ) ;

__attribute__((used)) static irqreturn_t kmx61_data_rdy_trig_poll(int irq, void *private)
{
 struct kmx61_data *data = private;

 if (data->acc_dready_trig_on)
  iio_trigger_poll(data->acc_dready_trig);
 if (data->mag_dready_trig_on)
  iio_trigger_poll(data->mag_dready_trig);

 if (data->motion_trig_on)
  iio_trigger_poll(data->motion_trig);

 if (data->ev_enable_state)
  return IRQ_WAKE_THREAD;
 return IRQ_HANDLED;
}
