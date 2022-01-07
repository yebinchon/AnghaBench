
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_fan_data {int alarm_work; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t fan_alarm_irq_handler(int irq, void *dev_id)
{
 struct gpio_fan_data *fan_data = dev_id;

 schedule_work(&fan_data->alarm_work);

 return IRQ_NONE;
}
