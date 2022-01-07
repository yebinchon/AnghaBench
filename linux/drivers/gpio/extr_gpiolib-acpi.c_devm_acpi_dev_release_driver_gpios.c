
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ACPI_COMPANION (struct device*) ;
 int acpi_dev_remove_driver_gpios (int ) ;

__attribute__((used)) static void devm_acpi_dev_release_driver_gpios(struct device *dev, void *res)
{
 acpi_dev_remove_driver_gpios(ACPI_COMPANION(dev));
}
