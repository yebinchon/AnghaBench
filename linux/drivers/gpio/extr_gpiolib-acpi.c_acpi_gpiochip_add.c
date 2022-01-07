
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int parent; int names; } ;
struct acpi_gpio_chip {int deferred_req_irqs_list_entry; int events; struct gpio_chip* chip; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int acpi_attach_data (int ,int ,struct acpi_gpio_chip*) ;
 int acpi_gpio_chip_dh ;
 int acpi_gpiochip_request_regions (struct acpi_gpio_chip*) ;
 int acpi_gpiochip_scan_gpios (struct acpi_gpio_chip*) ;
 int acpi_walk_dep_device_list (int ) ;
 int dev_err (int ,char*) ;
 int dev_fwnode (int ) ;
 int devprop_gpiochip_set_names (struct gpio_chip*,int ) ;
 int kfree (struct acpi_gpio_chip*) ;
 struct acpi_gpio_chip* kzalloc (int,int ) ;

void acpi_gpiochip_add(struct gpio_chip *chip)
{
 struct acpi_gpio_chip *acpi_gpio;
 acpi_handle handle;
 acpi_status status;

 if (!chip || !chip->parent)
  return;

 handle = ACPI_HANDLE(chip->parent);
 if (!handle)
  return;

 acpi_gpio = kzalloc(sizeof(*acpi_gpio), GFP_KERNEL);
 if (!acpi_gpio) {
  dev_err(chip->parent,
   "Failed to allocate memory for ACPI GPIO chip\n");
  return;
 }

 acpi_gpio->chip = chip;
 INIT_LIST_HEAD(&acpi_gpio->events);
 INIT_LIST_HEAD(&acpi_gpio->deferred_req_irqs_list_entry);

 status = acpi_attach_data(handle, acpi_gpio_chip_dh, acpi_gpio);
 if (ACPI_FAILURE(status)) {
  dev_err(chip->parent, "Failed to attach ACPI GPIO chip\n");
  kfree(acpi_gpio);
  return;
 }

 if (!chip->names)
  devprop_gpiochip_set_names(chip, dev_fwnode(chip->parent));

 acpi_gpiochip_request_regions(acpi_gpio);
 acpi_gpiochip_scan_gpios(acpi_gpio);
 acpi_walk_dep_device_list(handle);
}
