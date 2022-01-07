
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int parent; int to_irq; } ;
struct acpi_gpio_chip {int deferred_req_irqs_list_entry; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (int ) ;
 int acpi_get_data (int ,int ,void**) ;
 int acpi_gpio_chip_dh ;
 int acpi_gpio_deferred_req_irqs_done ;
 int acpi_gpio_deferred_req_irqs_list ;
 int acpi_gpio_deferred_req_irqs_lock ;
 int acpi_gpiochip_alloc_event ;
 int acpi_gpiochip_request_irqs (struct acpi_gpio_chip*) ;
 int acpi_walk_resources (int ,char*,int ,struct acpi_gpio_chip*) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void acpi_gpiochip_request_interrupts(struct gpio_chip *chip)
{
 struct acpi_gpio_chip *acpi_gpio;
 acpi_handle handle;
 acpi_status status;
 bool defer;

 if (!chip->parent || !chip->to_irq)
  return;

 handle = ACPI_HANDLE(chip->parent);
 if (!handle)
  return;

 status = acpi_get_data(handle, acpi_gpio_chip_dh, (void **)&acpi_gpio);
 if (ACPI_FAILURE(status))
  return;

 acpi_walk_resources(handle, "_AEI",
       acpi_gpiochip_alloc_event, acpi_gpio);

 mutex_lock(&acpi_gpio_deferred_req_irqs_lock);
 defer = !acpi_gpio_deferred_req_irqs_done;
 if (defer)
  list_add(&acpi_gpio->deferred_req_irqs_list_entry,
    &acpi_gpio_deferred_req_irqs_list);
 mutex_unlock(&acpi_gpio_deferred_req_irqs_lock);

 if (defer)
  return;

 acpi_gpiochip_request_irqs(acpi_gpio);
}
