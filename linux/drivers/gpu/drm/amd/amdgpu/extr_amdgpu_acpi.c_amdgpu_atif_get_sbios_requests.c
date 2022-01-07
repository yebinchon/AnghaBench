
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pointer; } ;
union acpi_object {TYPE_1__ buffer; } ;
typedef size_t u16 ;
struct atif_sbios_requests {int pending; } ;
struct amdgpu_atif {int dummy; } ;


 int ATIF_FUNCTION_GET_SYSTEM_BIOS_REQUESTS ;
 int DRM_DEBUG_DRIVER (char*,int ) ;
 int EINVAL ;
 int EIO ;
 union acpi_object* amdgpu_atif_call (struct amdgpu_atif*,int ,int *) ;
 int hweight32 (int ) ;
 int kfree (union acpi_object*) ;
 int memcpy (struct atif_sbios_requests*,scalar_t__,size_t) ;
 int memset (struct atif_sbios_requests*,int ,int) ;
 size_t min (int,size_t) ;

__attribute__((used)) static int amdgpu_atif_get_sbios_requests(struct amdgpu_atif *atif,
       struct atif_sbios_requests *req)
{
 union acpi_object *info;
 size_t size;
 int count = 0;

 info = amdgpu_atif_call(atif, ATIF_FUNCTION_GET_SYSTEM_BIOS_REQUESTS,
    ((void*)0));
 if (!info)
  return -EIO;

 size = *(u16 *)info->buffer.pointer;
 if (size < 0xd) {
  count = -EINVAL;
  goto out;
 }
 memset(req, 0, sizeof(*req));

 size = min(sizeof(*req), size);
 memcpy(req, info->buffer.pointer, size);
 DRM_DEBUG_DRIVER("SBIOS pending requests: %#x\n", req->pending);

 count = hweight32(req->pending);

out:
 kfree(info);
 return count;
}
