
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_gpio_event {int irqflags; int irq_requested; int irq; int (* handler ) (int ,struct acpi_gpio_event*) ;int desc; scalar_t__ irq_is_wake; } ;
struct acpi_gpio_chip {TYPE_1__* chip; } ;
struct TYPE_2__ {int parent; } ;


 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 int dev_err (int ,char*,int ) ;
 int enable_irq_wake (int ) ;
 int gpiod_get_raw_value_cansleep (int ) ;
 int request_threaded_irq (int ,int *,int (*) (int ,struct acpi_gpio_event*),int,char*,struct acpi_gpio_event*) ;
 scalar_t__ run_edge_events_on_boot ;
 int stub1 (int ,struct acpi_gpio_event*) ;

__attribute__((used)) static void acpi_gpiochip_request_irq(struct acpi_gpio_chip *acpi_gpio,
          struct acpi_gpio_event *event)
{
 int ret, value;

 ret = request_threaded_irq(event->irq, ((void*)0), event->handler,
       event->irqflags, "ACPI:Event", event);
 if (ret) {
  dev_err(acpi_gpio->chip->parent,
   "Failed to setup interrupt handler for %d\n",
   event->irq);
  return;
 }

 if (event->irq_is_wake)
  enable_irq_wake(event->irq);

 event->irq_requested = 1;


 if (run_edge_events_on_boot &&
     (event->irqflags & (IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING))) {
  value = gpiod_get_raw_value_cansleep(event->desc);
  if (((event->irqflags & IRQF_TRIGGER_RISING) && value == 1) ||
      ((event->irqflags & IRQF_TRIGGER_FALLING) && value == 0))
   event->handler(event->irq, event);
 }
}
