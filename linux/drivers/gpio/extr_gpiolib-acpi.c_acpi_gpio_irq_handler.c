
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_gpio_event {int handle; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int acpi_evaluate_object (int ,int *,int *,int *) ;

__attribute__((used)) static irqreturn_t acpi_gpio_irq_handler(int irq, void *data)
{
 struct acpi_gpio_event *event = data;

 acpi_evaluate_object(event->handle, ((void*)0), ((void*)0), ((void*)0));

 return IRQ_HANDLED;
}
