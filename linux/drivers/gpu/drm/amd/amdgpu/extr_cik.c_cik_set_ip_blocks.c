
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; int enable_virtual_display; } ;







 int EINVAL ;
 int amdgpu_device_has_dc_support (struct amdgpu_device*) ;
 int amdgpu_device_ip_block_add (struct amdgpu_device*,int *) ;
 int cik_common_ip_block ;
 int cik_detect_hw_virtualization (struct amdgpu_device*) ;
 int cik_ih_ip_block ;
 int cik_sdma_ip_block ;
 int dce_v8_1_ip_block ;
 int dce_v8_2_ip_block ;
 int dce_v8_3_ip_block ;
 int dce_v8_5_ip_block ;
 int dce_virtual_ip_block ;
 int dm_ip_block ;
 int gfx_v7_1_ip_block ;
 int gfx_v7_2_ip_block ;
 int gfx_v7_3_ip_block ;
 int gmc_v7_0_ip_block ;
 int kv_smu_ip_block ;
 int pp_smu_ip_block ;
 int uvd_v4_2_ip_block ;
 int vce_v2_0_ip_block ;

int cik_set_ip_blocks(struct amdgpu_device *adev)
{
 cik_detect_hw_virtualization(adev);

 switch (adev->asic_type) {
 case 132:
  amdgpu_device_ip_block_add(adev, &cik_common_ip_block);
  amdgpu_device_ip_block_add(adev, &gmc_v7_0_ip_block);
  amdgpu_device_ip_block_add(adev, &cik_ih_ip_block);
  amdgpu_device_ip_block_add(adev, &gfx_v7_2_ip_block);
  amdgpu_device_ip_block_add(adev, &cik_sdma_ip_block);
  amdgpu_device_ip_block_add(adev, &pp_smu_ip_block);
  if (adev->enable_virtual_display)
   amdgpu_device_ip_block_add(adev, &dce_virtual_ip_block);




  else
   amdgpu_device_ip_block_add(adev, &dce_v8_2_ip_block);
  amdgpu_device_ip_block_add(adev, &uvd_v4_2_ip_block);
  amdgpu_device_ip_block_add(adev, &vce_v2_0_ip_block);
  break;
 case 131:
  amdgpu_device_ip_block_add(adev, &cik_common_ip_block);
  amdgpu_device_ip_block_add(adev, &gmc_v7_0_ip_block);
  amdgpu_device_ip_block_add(adev, &cik_ih_ip_block);
  amdgpu_device_ip_block_add(adev, &gfx_v7_3_ip_block);
  amdgpu_device_ip_block_add(adev, &cik_sdma_ip_block);
  amdgpu_device_ip_block_add(adev, &pp_smu_ip_block);
  if (adev->enable_virtual_display)
   amdgpu_device_ip_block_add(adev, &dce_virtual_ip_block);




  else
   amdgpu_device_ip_block_add(adev, &dce_v8_5_ip_block);
  amdgpu_device_ip_block_add(adev, &uvd_v4_2_ip_block);
  amdgpu_device_ip_block_add(adev, &vce_v2_0_ip_block);
  break;
 case 129:
  amdgpu_device_ip_block_add(adev, &cik_common_ip_block);
  amdgpu_device_ip_block_add(adev, &gmc_v7_0_ip_block);
  amdgpu_device_ip_block_add(adev, &cik_ih_ip_block);
  amdgpu_device_ip_block_add(adev, &gfx_v7_1_ip_block);
  amdgpu_device_ip_block_add(adev, &cik_sdma_ip_block);
  amdgpu_device_ip_block_add(adev, &kv_smu_ip_block);
  if (adev->enable_virtual_display)
   amdgpu_device_ip_block_add(adev, &dce_virtual_ip_block);




  else
   amdgpu_device_ip_block_add(adev, &dce_v8_1_ip_block);

  amdgpu_device_ip_block_add(adev, &uvd_v4_2_ip_block);
  amdgpu_device_ip_block_add(adev, &vce_v2_0_ip_block);
  break;
 case 130:
 case 128:
  amdgpu_device_ip_block_add(adev, &cik_common_ip_block);
  amdgpu_device_ip_block_add(adev, &gmc_v7_0_ip_block);
  amdgpu_device_ip_block_add(adev, &cik_ih_ip_block);
  amdgpu_device_ip_block_add(adev, &gfx_v7_2_ip_block);
  amdgpu_device_ip_block_add(adev, &cik_sdma_ip_block);
  amdgpu_device_ip_block_add(adev, &kv_smu_ip_block);
  if (adev->enable_virtual_display)
   amdgpu_device_ip_block_add(adev, &dce_virtual_ip_block);




  else
   amdgpu_device_ip_block_add(adev, &dce_v8_3_ip_block);
  amdgpu_device_ip_block_add(adev, &uvd_v4_2_ip_block);
  amdgpu_device_ip_block_add(adev, &vce_v2_0_ip_block);
  break;
 default:

  return -EINVAL;
 }
 return 0;
}
