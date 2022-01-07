
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_status ;
typedef void* acpi_handle ;


 int AE_CTRL_TERMINATE ;
 int AE_OK ;
 int DMAR_DSM_FUNC_DRHD ;
 scalar_t__ dmar_detect_dsm (void*,int ) ;

__attribute__((used)) static acpi_status dmar_get_dsm_handle(acpi_handle handle, u32 lvl,
           void *context, void **retval)
{
 acpi_handle *phdl = retval;

 if (dmar_detect_dsm(handle, DMAR_DSM_FUNC_DRHD)) {
  *phdl = handle;
  return AE_CTRL_TERMINATE;
 }

 return AE_OK;
}
