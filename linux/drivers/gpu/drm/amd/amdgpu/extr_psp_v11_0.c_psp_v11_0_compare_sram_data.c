
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct psp_context {struct amdgpu_device* adev; } ;
struct amdgpu_firmware_info {unsigned int ucode_size; scalar_t__ kaddr; } ;
struct amdgpu_device {int dummy; } ;
typedef enum AMDGPU_UCODE_ID { ____Placeholder_AMDGPU_UCODE_ID } AMDGPU_UCODE_ID ;


 unsigned int RREG32 (unsigned int) ;
 int WREG32 (unsigned int,unsigned int) ;
 int psp_v11_0_sram_map (struct amdgpu_device*,unsigned int*,unsigned int*,unsigned int*,int) ;

__attribute__((used)) static bool psp_v11_0_compare_sram_data(struct psp_context *psp,
           struct amdgpu_firmware_info *ucode,
           enum AMDGPU_UCODE_ID ucode_type)
{
 int err = 0;
 unsigned int fw_sram_reg_val = 0;
 unsigned int fw_sram_addr_reg_offset = 0;
 unsigned int fw_sram_data_reg_offset = 0;
 unsigned int ucode_size;
 uint32_t *ucode_mem = ((void*)0);
 struct amdgpu_device *adev = psp->adev;

 err = psp_v11_0_sram_map(adev, &fw_sram_reg_val, &fw_sram_addr_reg_offset,
    &fw_sram_data_reg_offset, ucode_type);
 if (err)
  return 0;

 WREG32(fw_sram_addr_reg_offset, fw_sram_reg_val);

 ucode_size = ucode->ucode_size;
 ucode_mem = (uint32_t *)ucode->kaddr;
 while (ucode_size) {
  fw_sram_reg_val = RREG32(fw_sram_data_reg_offset);

  if (*ucode_mem != fw_sram_reg_val)
   return 0;

  ucode_mem++;

  ucode_size -= 4;
 }

 return 1;
}
