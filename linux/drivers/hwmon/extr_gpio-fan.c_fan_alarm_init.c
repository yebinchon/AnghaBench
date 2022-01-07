
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_fan_data {int alarm_work; int alarm_gpio; struct device* dev; } ;
struct device {int dummy; } ;


 int INIT_WORK (int *,int ) ;
 int IRQF_SHARED ;
 int IRQ_TYPE_EDGE_BOTH ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct gpio_fan_data*) ;
 int fan_alarm_irq_handler ;
 int fan_alarm_notify ;
 int gpiod_to_irq (int ) ;
 int irq_set_irq_type (int,int ) ;

__attribute__((used)) static int fan_alarm_init(struct gpio_fan_data *fan_data)
{
 int alarm_irq;
 struct device *dev = fan_data->dev;





 alarm_irq = gpiod_to_irq(fan_data->alarm_gpio);
 if (alarm_irq <= 0)
  return 0;

 INIT_WORK(&fan_data->alarm_work, fan_alarm_notify);
 irq_set_irq_type(alarm_irq, IRQ_TYPE_EDGE_BOTH);
 return devm_request_irq(dev, alarm_irq, fan_alarm_irq_handler,
    IRQF_SHARED, "GPIO fan alarm", fan_data);
}
