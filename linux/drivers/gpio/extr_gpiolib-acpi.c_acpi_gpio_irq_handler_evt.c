
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_gpio_event {int pin; int handle; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int acpi_execute_simple_method (int ,int *,int ) ;

__attribute__((used)) static irqreturn_t acpi_gpio_irq_handler_evt(int irq, void *data)
{
 struct acpi_gpio_event *event = data;

 acpi_execute_simple_method(event->handle, ((void*)0), event->pin);

 return IRQ_HANDLED;
}
