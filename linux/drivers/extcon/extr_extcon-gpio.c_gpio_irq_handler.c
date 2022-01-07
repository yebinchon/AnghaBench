
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_extcon_data {int debounce_jiffies; int work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int queue_delayed_work (int ,int *,int ) ;
 int system_power_efficient_wq ;

__attribute__((used)) static irqreturn_t gpio_irq_handler(int irq, void *dev_id)
{
 struct gpio_extcon_data *data = dev_id;

 queue_delayed_work(system_power_efficient_wq, &data->work,
         data->debounce_jiffies);
 return IRQ_HANDLED;
}
