
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
typedef int * acpi_handle ;


 int * ACPI_HANDLE (int *) ;
 int DRM_DEBUG_KMS (char*) ;
 int INTEL_DSM_FN_PLATFORM_MUX_INFO ;
 int INTEL_DSM_REVISION_ID ;
 int acpi_check_dsm (int *,int *,int ,int) ;
 int intel_dsm_guid ;
 int intel_dsm_platform_mux_info (int *) ;

__attribute__((used)) static acpi_handle intel_dsm_pci_probe(struct pci_dev *pdev)
{
 acpi_handle dhandle;

 dhandle = ACPI_HANDLE(&pdev->dev);
 if (!dhandle)
  return ((void*)0);

 if (!acpi_check_dsm(dhandle, &intel_dsm_guid, INTEL_DSM_REVISION_ID,
       1 << INTEL_DSM_FN_PLATFORM_MUX_INFO)) {
  DRM_DEBUG_KMS("no _DSM method for intel device\n");
  return ((void*)0);
 }

 intel_dsm_platform_mux_info(dhandle);

 return dhandle;
}
