
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct gpio_chip {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ENODEV ;
 int EPROBE_DEFER ;
 struct gpio_desc* ERR_PTR (int ) ;
 int acpi_get_handle (int *,char*,int *) ;
 int acpi_gpiochip_find ;
 struct gpio_chip* gpiochip_find (int ,int ) ;
 struct gpio_desc* gpiochip_get_desc (struct gpio_chip*,int) ;

__attribute__((used)) static struct gpio_desc *acpi_get_gpiod(char *path, int pin)
{
 struct gpio_chip *chip;
 acpi_handle handle;
 acpi_status status;

 status = acpi_get_handle(((void*)0), path, &handle);
 if (ACPI_FAILURE(status))
  return ERR_PTR(-ENODEV);

 chip = gpiochip_find(handle, acpi_gpiochip_find);
 if (!chip)
  return ERR_PTR(-EPROBE_DEFER);

 return gpiochip_get_desc(chip, pin);
}
