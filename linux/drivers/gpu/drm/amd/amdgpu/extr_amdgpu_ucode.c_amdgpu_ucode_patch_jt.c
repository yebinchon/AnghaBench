
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct gfx_firmware_header_v1_0 {int jt_size; int jt_offset; } ;
struct common_firmware_header {int ucode_array_offset_bytes; int ucode_size_bytes; } ;
struct amdgpu_firmware_info {TYPE_1__* fw; int * kaddr; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ALIGN (int,int ) ;
 int PAGE_SIZE ;
 int le32_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int amdgpu_ucode_patch_jt(struct amdgpu_firmware_info *ucode,
    uint64_t mc_addr, void *kptr)
{
 const struct gfx_firmware_header_v1_0 *header = ((void*)0);
 const struct common_firmware_header *comm_hdr = ((void*)0);
 uint8_t* src_addr = ((void*)0);
 uint8_t* dst_addr = ((void*)0);

 if (((void*)0) == ucode->fw)
  return 0;

 comm_hdr = (const struct common_firmware_header *)ucode->fw->data;
 header = (const struct gfx_firmware_header_v1_0 *)ucode->fw->data;
 dst_addr = ucode->kaddr +
      ALIGN(le32_to_cpu(comm_hdr->ucode_size_bytes),
      PAGE_SIZE);
 src_addr = (uint8_t *)ucode->fw->data +
      le32_to_cpu(comm_hdr->ucode_array_offset_bytes) +
      (le32_to_cpu(header->jt_offset) * 4);
 memcpy(dst_addr, src_addr, le32_to_cpu(header->jt_size) * 4);

 return 0;
}
