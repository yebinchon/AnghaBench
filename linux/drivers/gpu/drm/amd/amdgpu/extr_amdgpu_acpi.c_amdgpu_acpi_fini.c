
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int atif; int acpi_nb; } ;


 int kfree (int ) ;
 int unregister_acpi_notifier (int *) ;

void amdgpu_acpi_fini(struct amdgpu_device *adev)
{
 unregister_acpi_notifier(&adev->acpi_nb);
 kfree(adev->atif);
}
