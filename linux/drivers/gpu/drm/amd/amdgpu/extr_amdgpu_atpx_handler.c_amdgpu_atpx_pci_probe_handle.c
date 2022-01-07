
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dev; } ;
typedef int acpi_status ;
typedef void* acpi_handle ;
struct TYPE_3__ {void* handle; } ;
struct TYPE_4__ {TYPE_1__ atpx; void* dhandle; void* other_handle; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 void* ACPI_HANDLE (int *) ;
 int acpi_get_handle (void*,char*,void**) ;
 TYPE_2__ amdgpu_atpx_priv ;

__attribute__((used)) static bool amdgpu_atpx_pci_probe_handle(struct pci_dev *pdev)
{
 acpi_handle dhandle, atpx_handle;
 acpi_status status;

 dhandle = ACPI_HANDLE(&pdev->dev);
 if (!dhandle)
  return 0;

 status = acpi_get_handle(dhandle, "ATPX", &atpx_handle);
 if (ACPI_FAILURE(status)) {
  amdgpu_atpx_priv.other_handle = dhandle;
  return 0;
 }
 amdgpu_atpx_priv.dhandle = dhandle;
 amdgpu_atpx_priv.atpx.handle = atpx_handle;
 return 1;
}
