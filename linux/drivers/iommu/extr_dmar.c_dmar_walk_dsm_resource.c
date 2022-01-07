
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; scalar_t__ pointer; } ;
union acpi_object {TYPE_1__ buffer; } ;
struct dmar_res_callback {void** arg; int * cb; } ;
struct acpi_dmar_header {int dummy; } ;
typedef int dmar_res_handler_t ;
typedef int callback ;
typedef int acpi_handle ;





 int ACPI_FREE (union acpi_object*) ;
 int ACPI_TYPE_BUFFER ;



 int DMAR_DSM_REV_ID ;
 int ENODEV ;
 union acpi_object* acpi_evaluate_dsm_typed (int ,int *,int ,int,int *,int ) ;
 int dmar_detect_dsm (int ,int) ;
 int dmar_hp_guid ;
 int dmar_walk_remapping_entries (struct acpi_dmar_header*,int ,struct dmar_res_callback*) ;
 int memset (struct dmar_res_callback*,int ,int) ;

__attribute__((used)) static int dmar_walk_dsm_resource(acpi_handle handle, int func,
      dmar_res_handler_t handler, void *arg)
{
 int ret = -ENODEV;
 union acpi_object *obj;
 struct acpi_dmar_header *start;
 struct dmar_res_callback callback;
 static int res_type[] = {
  [129] = 132,
  [130] = 131,
  [128] = 133,
 };

 if (!dmar_detect_dsm(handle, func))
  return 0;

 obj = acpi_evaluate_dsm_typed(handle, &dmar_hp_guid, DMAR_DSM_REV_ID,
          func, ((void*)0), ACPI_TYPE_BUFFER);
 if (!obj)
  return -ENODEV;

 memset(&callback, 0, sizeof(callback));
 callback.cb[res_type[func]] = handler;
 callback.arg[res_type[func]] = arg;
 start = (struct acpi_dmar_header *)obj->buffer.pointer;
 ret = dmar_walk_remapping_entries(start, obj->buffer.length, &callback);

 ACPI_FREE(obj);

 return ret;
}
