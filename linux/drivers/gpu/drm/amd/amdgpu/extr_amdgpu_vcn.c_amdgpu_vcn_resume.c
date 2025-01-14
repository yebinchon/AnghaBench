
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct common_firmware_header {int ucode_size_bytes; int ucode_array_offset_bytes; } ;
struct TYPE_8__ {int num_vcn_inst; int harvest_config; TYPE_3__* fw; TYPE_2__* inst; } ;
struct TYPE_5__ {scalar_t__ load_type; } ;
struct amdgpu_device {TYPE_4__ vcn; TYPE_1__ firmware; } ;
struct TYPE_7__ {int * data; } ;
struct TYPE_6__ {void* cpu_addr; int * saved_bo; int * vcpu_bo; } ;


 scalar_t__ AMDGPU_FW_LOAD_PSP ;
 int EINVAL ;
 unsigned int amdgpu_bo_size (int *) ;
 int kvfree (int *) ;
 unsigned int le32_to_cpu (int ) ;
 int memcpy_toio (void*,int *,unsigned int) ;
 int memset_io (void*,int ,unsigned int) ;

int amdgpu_vcn_resume(struct amdgpu_device *adev)
{
 unsigned size;
 void *ptr;
 int i;

 for (i = 0; i < adev->vcn.num_vcn_inst; ++i) {
  if (adev->vcn.harvest_config & (1 << i))
   continue;
  if (adev->vcn.inst[i].vcpu_bo == ((void*)0))
   return -EINVAL;

  size = amdgpu_bo_size(adev->vcn.inst[i].vcpu_bo);
  ptr = adev->vcn.inst[i].cpu_addr;

  if (adev->vcn.inst[i].saved_bo != ((void*)0)) {
   memcpy_toio(ptr, adev->vcn.inst[i].saved_bo, size);
   kvfree(adev->vcn.inst[i].saved_bo);
   adev->vcn.inst[i].saved_bo = ((void*)0);
  } else {
   const struct common_firmware_header *hdr;
   unsigned offset;

   hdr = (const struct common_firmware_header *)adev->vcn.fw->data;
   if (adev->firmware.load_type != AMDGPU_FW_LOAD_PSP) {
    offset = le32_to_cpu(hdr->ucode_array_offset_bytes);
    memcpy_toio(adev->vcn.inst[i].cpu_addr, adev->vcn.fw->data + offset,
         le32_to_cpu(hdr->ucode_size_bytes));
    size -= le32_to_cpu(hdr->ucode_size_bytes);
    ptr += le32_to_cpu(hdr->ucode_size_bytes);
   }
   memset_io(ptr, 0, size);
  }
 }
 return 0;
}
