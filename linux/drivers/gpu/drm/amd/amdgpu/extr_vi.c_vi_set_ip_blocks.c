
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ops; } ;
struct amdgpu_device {int asic_type; int enable_virtual_display; TYPE_1__ virt; } ;
 int EINVAL ;
 int acp_ip_block ;
 int amdgpu_device_has_dc_support (struct amdgpu_device*) ;
 int amdgpu_device_ip_block_add (struct amdgpu_device*,int *) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int cz_ih_ip_block ;
 int dce_v10_0_ip_block ;
 int dce_v10_1_ip_block ;
 int dce_v11_0_ip_block ;
 int dce_v11_2_ip_block ;
 int dce_virtual_ip_block ;
 int dm_ip_block ;
 int gfx_v8_0_ip_block ;
 int gfx_v8_1_ip_block ;
 int gmc_v7_4_ip_block ;
 int gmc_v8_0_ip_block ;
 int gmc_v8_1_ip_block ;
 int gmc_v8_5_ip_block ;
 int iceland_ih_ip_block ;
 int pp_smu_ip_block ;
 int sdma_v2_4_ip_block ;
 int sdma_v3_0_ip_block ;
 int sdma_v3_1_ip_block ;
 int tonga_ih_ip_block ;
 int uvd_v5_0_ip_block ;
 int uvd_v6_0_ip_block ;
 int uvd_v6_2_ip_block ;
 int uvd_v6_3_ip_block ;
 int vce_v3_0_ip_block ;
 int vce_v3_1_ip_block ;
 int vce_v3_4_ip_block ;
 int vi_common_ip_block ;
 int vi_detect_hw_virtualization (struct amdgpu_device*) ;
 int xgpu_vi_virt_ops ;

int vi_set_ip_blocks(struct amdgpu_device *adev)
{

 vi_detect_hw_virtualization(adev);

 if (amdgpu_sriov_vf(adev))
  adev->virt.ops = &xgpu_vi_virt_ops;

 switch (adev->asic_type) {
 case 129:

  amdgpu_device_ip_block_add(adev, &vi_common_ip_block);
  amdgpu_device_ip_block_add(adev, &gmc_v7_4_ip_block);
  amdgpu_device_ip_block_add(adev, &iceland_ih_ip_block);
  amdgpu_device_ip_block_add(adev, &gfx_v8_0_ip_block);
  amdgpu_device_ip_block_add(adev, &sdma_v2_4_ip_block);
  amdgpu_device_ip_block_add(adev, &pp_smu_ip_block);
  if (adev->enable_virtual_display)
   amdgpu_device_ip_block_add(adev, &dce_virtual_ip_block);
  break;
 case 135:
  amdgpu_device_ip_block_add(adev, &vi_common_ip_block);
  amdgpu_device_ip_block_add(adev, &gmc_v8_5_ip_block);
  amdgpu_device_ip_block_add(adev, &tonga_ih_ip_block);
  amdgpu_device_ip_block_add(adev, &gfx_v8_0_ip_block);
  amdgpu_device_ip_block_add(adev, &sdma_v3_0_ip_block);
  amdgpu_device_ip_block_add(adev, &pp_smu_ip_block);
  if (adev->enable_virtual_display || amdgpu_sriov_vf(adev))
   amdgpu_device_ip_block_add(adev, &dce_virtual_ip_block);




  else
   amdgpu_device_ip_block_add(adev, &dce_v10_1_ip_block);
  if (!amdgpu_sriov_vf(adev)) {
   amdgpu_device_ip_block_add(adev, &uvd_v6_0_ip_block);
   amdgpu_device_ip_block_add(adev, &vce_v3_0_ip_block);
  }
  break;
 case 130:
  amdgpu_device_ip_block_add(adev, &vi_common_ip_block);
  amdgpu_device_ip_block_add(adev, &gmc_v8_0_ip_block);
  amdgpu_device_ip_block_add(adev, &tonga_ih_ip_block);
  amdgpu_device_ip_block_add(adev, &gfx_v8_0_ip_block);
  amdgpu_device_ip_block_add(adev, &sdma_v3_0_ip_block);
  amdgpu_device_ip_block_add(adev, &pp_smu_ip_block);
  if (adev->enable_virtual_display || amdgpu_sriov_vf(adev))
   amdgpu_device_ip_block_add(adev, &dce_virtual_ip_block);




  else
   amdgpu_device_ip_block_add(adev, &dce_v10_0_ip_block);
  if (!amdgpu_sriov_vf(adev)) {
   amdgpu_device_ip_block_add(adev, &uvd_v5_0_ip_block);
   amdgpu_device_ip_block_add(adev, &vce_v3_0_ip_block);
  }
  break;
 case 134:
 case 133:
 case 132:
 case 128:
  amdgpu_device_ip_block_add(adev, &vi_common_ip_block);
  amdgpu_device_ip_block_add(adev, &gmc_v8_1_ip_block);
  amdgpu_device_ip_block_add(adev, &tonga_ih_ip_block);
  amdgpu_device_ip_block_add(adev, &gfx_v8_0_ip_block);
  amdgpu_device_ip_block_add(adev, &sdma_v3_1_ip_block);
  amdgpu_device_ip_block_add(adev, &pp_smu_ip_block);
  if (adev->enable_virtual_display)
   amdgpu_device_ip_block_add(adev, &dce_virtual_ip_block);




  else
   amdgpu_device_ip_block_add(adev, &dce_v11_2_ip_block);
  amdgpu_device_ip_block_add(adev, &uvd_v6_3_ip_block);
  amdgpu_device_ip_block_add(adev, &vce_v3_4_ip_block);
  break;
 case 136:
  amdgpu_device_ip_block_add(adev, &vi_common_ip_block);
  amdgpu_device_ip_block_add(adev, &gmc_v8_0_ip_block);
  amdgpu_device_ip_block_add(adev, &cz_ih_ip_block);
  amdgpu_device_ip_block_add(adev, &gfx_v8_0_ip_block);
  amdgpu_device_ip_block_add(adev, &sdma_v3_0_ip_block);
  amdgpu_device_ip_block_add(adev, &pp_smu_ip_block);
  if (adev->enable_virtual_display)
   amdgpu_device_ip_block_add(adev, &dce_virtual_ip_block);




  else
   amdgpu_device_ip_block_add(adev, &dce_v11_0_ip_block);
  amdgpu_device_ip_block_add(adev, &uvd_v6_0_ip_block);
  amdgpu_device_ip_block_add(adev, &vce_v3_1_ip_block);



  break;
 case 131:
  amdgpu_device_ip_block_add(adev, &vi_common_ip_block);
  amdgpu_device_ip_block_add(adev, &gmc_v8_0_ip_block);
  amdgpu_device_ip_block_add(adev, &cz_ih_ip_block);
  amdgpu_device_ip_block_add(adev, &gfx_v8_1_ip_block);
  amdgpu_device_ip_block_add(adev, &sdma_v3_0_ip_block);
  amdgpu_device_ip_block_add(adev, &pp_smu_ip_block);
  if (adev->enable_virtual_display)
   amdgpu_device_ip_block_add(adev, &dce_virtual_ip_block);




  else
   amdgpu_device_ip_block_add(adev, &dce_v11_0_ip_block);
  amdgpu_device_ip_block_add(adev, &uvd_v6_2_ip_block);
  amdgpu_device_ip_block_add(adev, &vce_v3_4_ip_block);



  break;
 default:

  return -EINVAL;
 }

 return 0;
}
