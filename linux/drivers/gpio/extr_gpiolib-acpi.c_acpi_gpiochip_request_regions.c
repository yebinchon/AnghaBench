
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int parent; } ;
struct acpi_gpio_chip {int conn_lock; int conns; struct gpio_chip* chip; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_ADR_SPACE_GPIO ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE (int ) ;
 int INIT_LIST_HEAD (int *) ;
 int acpi_gpio_adr_space_handler ;
 int acpi_install_address_space_handler (int ,int ,int ,int *,struct acpi_gpio_chip*) ;
 int dev_err (int ,char*) ;
 int mutex_init (int *) ;

__attribute__((used)) static void acpi_gpiochip_request_regions(struct acpi_gpio_chip *achip)
{
 struct gpio_chip *chip = achip->chip;
 acpi_handle handle = ACPI_HANDLE(chip->parent);
 acpi_status status;

 INIT_LIST_HEAD(&achip->conns);
 mutex_init(&achip->conn_lock);
 status = acpi_install_address_space_handler(handle, ACPI_ADR_SPACE_GPIO,
          acpi_gpio_adr_space_handler,
          ((void*)0), achip);
 if (ACPI_FAILURE(status))
  dev_err(chip->parent,
          "Failed to install GPIO OpRegion handler\n");
}
