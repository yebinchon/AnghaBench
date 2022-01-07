
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int * acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_DEVICE ;
 int ACPI_UINT32_MAX ;
 int DMAR_DSM_FUNC_DRHD ;
 int ENXIO ;
 int acpi_walk_namespace (int ,int *,int ,int ,int *,int *,int **) ;
 scalar_t__ dmar_detect_dsm (int *,int ) ;
 int dmar_get_dsm_handle ;
 int dmar_global_lock ;
 int dmar_hotplug_insert (int *) ;
 int dmar_hotplug_remove (int *) ;
 int dmar_in_use () ;
 int down_write (int *) ;
 int pr_warn (char*) ;
 int up_write (int *) ;

__attribute__((used)) static int dmar_device_hotplug(acpi_handle handle, bool insert)
{
 int ret;
 acpi_handle tmp = ((void*)0);
 acpi_status status;

 if (!dmar_in_use())
  return 0;

 if (dmar_detect_dsm(handle, DMAR_DSM_FUNC_DRHD)) {
  tmp = handle;
 } else {
  status = acpi_walk_namespace(ACPI_TYPE_DEVICE, handle,
          ACPI_UINT32_MAX,
          dmar_get_dsm_handle,
          ((void*)0), ((void*)0), &tmp);
  if (ACPI_FAILURE(status)) {
   pr_warn("Failed to locate _DSM method.\n");
   return -ENXIO;
  }
 }
 if (tmp == ((void*)0))
  return 0;

 down_write(&dmar_global_lock);
 if (insert)
  ret = dmar_hotplug_insert(tmp);
 else
  ret = dmar_hotplug_remove(tmp);
 up_write(&dmar_global_lock);

 return ret;
}
