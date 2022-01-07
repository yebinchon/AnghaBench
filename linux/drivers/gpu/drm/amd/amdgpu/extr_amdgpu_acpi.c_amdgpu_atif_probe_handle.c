
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_buffer {int member_0; char* member_1; } ;
typedef int acpi_status ;
typedef int acpi_method_name ;
typedef int * acpi_handle ;


 int ACPI_FULL_PATHNAME ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int DRM_DEBUG_DRIVER (char*,...) ;
 int acpi_get_handle (int *,char*,int **) ;
 int acpi_get_name (int *,int ,struct acpi_buffer*) ;
 int * amdgpu_atpx_get_dhandle () ;
 scalar_t__ amdgpu_has_atpx () ;

__attribute__((used)) static acpi_handle amdgpu_atif_probe_handle(acpi_handle dhandle)
{
 acpi_handle handle = ((void*)0);
 char acpi_method_name[255] = { 0 };
 struct acpi_buffer buffer = { sizeof(acpi_method_name), acpi_method_name };
 acpi_status status;




 status = acpi_get_handle(dhandle, "ATIF", &handle);
 if (ACPI_SUCCESS(status))
  goto out;

 if (amdgpu_has_atpx()) {
  status = acpi_get_handle(amdgpu_atpx_get_dhandle(), "ATIF",
      &handle);
  if (ACPI_SUCCESS(status))
   goto out;
 }

 DRM_DEBUG_DRIVER("No ATIF handle found\n");
 return ((void*)0);
out:
 acpi_get_name(handle, ACPI_FULL_PATHNAME, &buffer);
 DRM_DEBUG_DRIVER("Found ATIF handle %s\n", acpi_method_name);
 return handle;
}
