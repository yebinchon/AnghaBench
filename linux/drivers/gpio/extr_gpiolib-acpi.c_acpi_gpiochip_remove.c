
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int parent; } ;
struct acpi_gpio_chip {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (int ) ;
 int acpi_detach_data (int ,int ) ;
 int acpi_get_data (int ,int ,void**) ;
 int acpi_gpio_chip_dh ;
 int acpi_gpiochip_free_regions (struct acpi_gpio_chip*) ;
 int dev_warn (int ,char*) ;
 int kfree (struct acpi_gpio_chip*) ;

void acpi_gpiochip_remove(struct gpio_chip *chip)
{
 struct acpi_gpio_chip *acpi_gpio;
 acpi_handle handle;
 acpi_status status;

 if (!chip || !chip->parent)
  return;

 handle = ACPI_HANDLE(chip->parent);
 if (!handle)
  return;

 status = acpi_get_data(handle, acpi_gpio_chip_dh, (void **)&acpi_gpio);
 if (ACPI_FAILURE(status)) {
  dev_warn(chip->parent, "Failed to retrieve ACPI GPIO chip\n");
  return;
 }

 acpi_gpiochip_free_regions(acpi_gpio);

 acpi_detach_data(handle, acpi_gpio_chip_dh);
 kfree(acpi_gpio);
}
