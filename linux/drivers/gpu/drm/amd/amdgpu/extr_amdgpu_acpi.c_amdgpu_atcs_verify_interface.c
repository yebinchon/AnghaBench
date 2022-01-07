
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pointer; } ;
union acpi_object {TYPE_1__ buffer; } ;
typedef size_t u16 ;
struct atcs_verify_interface {int function_bits; int version; } ;
struct amdgpu_atcs {int functions; } ;
typedef int output ;
typedef int acpi_handle ;


 int ATCS_FUNCTION_VERIFY_INTERFACE ;
 int DRM_DEBUG_DRIVER (char*,int ) ;
 int DRM_INFO (char*,size_t) ;
 int EINVAL ;
 int EIO ;
 union acpi_object* amdgpu_atcs_call (int ,int ,int *) ;
 int amdgpu_atcs_parse_functions (int *,int ) ;
 int kfree (union acpi_object*) ;
 int memcpy (struct atcs_verify_interface*,scalar_t__,size_t) ;
 int memset (struct atcs_verify_interface*,int ,int) ;
 size_t min (int,size_t) ;

__attribute__((used)) static int amdgpu_atcs_verify_interface(acpi_handle handle,
     struct amdgpu_atcs *atcs)
{
 union acpi_object *info;
 struct atcs_verify_interface output;
 size_t size;
 int err = 0;

 info = amdgpu_atcs_call(handle, ATCS_FUNCTION_VERIFY_INTERFACE, ((void*)0));
 if (!info)
  return -EIO;

 memset(&output, 0, sizeof(output));

 size = *(u16 *) info->buffer.pointer;
 if (size < 8) {
  DRM_INFO("ATCS buffer is too small: %zu\n", size);
  err = -EINVAL;
  goto out;
 }
 size = min(sizeof(output), size);

 memcpy(&output, info->buffer.pointer, size);


 DRM_DEBUG_DRIVER("ATCS version %u\n", output.version);

 amdgpu_atcs_parse_functions(&atcs->functions, output.function_bits);

out:
 kfree(info);
 return err;
}
