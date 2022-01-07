
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct amdgpu_firmware_info {int ucode_size; int mc_addr; int ucode_id; int member_0; } ;
struct amdgpu_device {int psp; } ;


 int AMDGPU_UCODE_ID_VCN0_RAM ;
 int AMDGPU_UCODE_ID_VCN1_RAM ;
 int psp_execute_np_fw_load (int *,struct amdgpu_firmware_info*) ;

int psp_update_vcn_sram(struct amdgpu_device *adev, int inst_idx,
   uint64_t cmd_gpu_addr, int cmd_size)
{
 struct amdgpu_firmware_info ucode = {0};

 ucode.ucode_id = inst_idx ? AMDGPU_UCODE_ID_VCN1_RAM :
  AMDGPU_UCODE_ID_VCN0_RAM;
 ucode.mc_addr = cmd_gpu_addr;
 ucode.ucode_size = cmd_size;

 return psp_execute_np_fw_load(&adev->psp, &ucode);
}
