
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adc_jack_data {int handling_delay; int handler; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int queue_delayed_work (int ,int *,int ) ;
 int system_power_efficient_wq ;

__attribute__((used)) static irqreturn_t adc_jack_irq_thread(int irq, void *_data)
{
 struct adc_jack_data *data = _data;

 queue_delayed_work(system_power_efficient_wq,
      &data->handler, data->handling_delay);
 return IRQ_HANDLED;
}
