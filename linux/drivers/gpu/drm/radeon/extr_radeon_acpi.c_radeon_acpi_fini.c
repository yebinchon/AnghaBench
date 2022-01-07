
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int acpi_nb; } ;


 int unregister_acpi_notifier (int *) ;

void radeon_acpi_fini(struct radeon_device *rdev)
{
 unregister_acpi_notifier(&rdev->acpi_nb);
}
