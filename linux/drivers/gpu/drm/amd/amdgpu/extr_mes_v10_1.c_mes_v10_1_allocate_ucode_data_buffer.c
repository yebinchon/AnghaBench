
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mes_firmware_header_v1_0 {int mes_ucode_data_size_bytes; int mes_ucode_data_offset_bytes; } ;
struct TYPE_4__ {int data_fw_obj; int data_fw_ptr; int data_fw_gpu_addr; TYPE_1__* fw; } ;
struct amdgpu_device {TYPE_2__ mes; int dev; } ;
typedef int __le32 ;
struct TYPE_3__ {scalar_t__ data; } ;


 int AMDGPU_GEM_DOMAIN_GTT ;
 int amdgpu_bo_create_reserved (struct amdgpu_device*,unsigned int,int,int ,int *,int *,void**) ;
 int amdgpu_bo_kunmap (int ) ;
 int amdgpu_bo_unreserve (int ) ;
 int dev_err (int ,char*,int) ;
 unsigned int le32_to_cpu (int ) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int mes_v10_1_allocate_ucode_data_buffer(struct amdgpu_device *adev)
{
 int r;
 const struct mes_firmware_header_v1_0 *mes_hdr;
 const __le32 *fw_data;
 unsigned fw_size;

 mes_hdr = (const struct mes_firmware_header_v1_0 *)
  adev->mes.fw->data;

 fw_data = (const __le32 *)(adev->mes.fw->data +
     le32_to_cpu(mes_hdr->mes_ucode_data_offset_bytes));
 fw_size = le32_to_cpu(mes_hdr->mes_ucode_data_size_bytes);

 r = amdgpu_bo_create_reserved(adev, fw_size,
          64 * 1024, AMDGPU_GEM_DOMAIN_GTT,
          &adev->mes.data_fw_obj,
          &adev->mes.data_fw_gpu_addr,
          (void **)&adev->mes.data_fw_ptr);
 if (r) {
  dev_err(adev->dev, "(%d) failed to create mes data fw bo\n", r);
  return r;
 }

 memcpy(adev->mes.data_fw_ptr, fw_data, fw_size);

 amdgpu_bo_kunmap(adev->mes.data_fw_obj);
 amdgpu_bo_unreserve(adev->mes.data_fw_obj);

 return 0;
}
