
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int load_type; } ;
struct TYPE_10__ {int * ops; } ;
struct TYPE_8__ {int supported; } ;
struct TYPE_9__ {TYPE_1__ xgmi; } ;
struct amdgpu_device {int asic_type; int flags; int enable_virtual_display; TYPE_4__ firmware; TYPE_3__ virt; TYPE_5__* nbio_funcs; int rev_id; int * df_funcs; TYPE_2__ gmc; } ;
struct TYPE_12__ {int (* detect_hw_virt ) (struct amdgpu_device*) ;} ;


 int AMDGPU_FW_LOAD_PSP ;
 int AMD_IS_APU ;






 int EINVAL ;
 int amdgpu_device_has_dc_support (struct amdgpu_device*) ;
 int amdgpu_device_ip_block_add (struct amdgpu_device*,int *) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int arct_reg_base_init (struct amdgpu_device*) ;
 int dce_virtual_ip_block ;
 int df_v1_7_funcs ;
 int df_v3_6_funcs ;
 int dm_ip_block ;
 int gfx_v9_0_ip_block ;
 int gmc_v9_0_ip_block ;
 int is_support_sw_smu (struct amdgpu_device*) ;
 int likely (int) ;
 TYPE_5__ nbio_v6_1_funcs ;
 TYPE_5__ nbio_v7_0_funcs ;
 TYPE_5__ nbio_v7_4_funcs ;
 int pp_smu_ip_block ;
 int psp_v10_0_ip_block ;
 int psp_v11_0_ip_block ;
 int psp_v12_0_ip_block ;
 int psp_v3_1_ip_block ;
 int sdma_v4_0_ip_block ;
 int smu_v11_0_ip_block ;
 int smu_v12_0_ip_block ;
 int soc15_get_rev_id (struct amdgpu_device*) ;
 int stub1 (struct amdgpu_device*) ;
 int uvd_v7_0_ip_block ;
 int vce_v4_0_ip_block ;
 int vcn_v1_0_ip_block ;
 int vcn_v2_0_ip_block ;
 int vcn_v2_5_ip_block ;
 int vega10_common_ip_block ;
 int vega10_ih_ip_block ;
 int vega10_reg_base_init (struct amdgpu_device*) ;
 int vega20_reg_base_init (struct amdgpu_device*) ;
 int xgpu_ai_virt_ops ;

int soc15_set_ip_blocks(struct amdgpu_device *adev)
{

 switch (adev->asic_type) {
 case 130:
 case 129:
 case 132:
 case 131:
  vega10_reg_base_init(adev);
  break;
 case 128:
  vega20_reg_base_init(adev);
  break;
 case 133:
  arct_reg_base_init(adev);
  break;
 default:
  return -EINVAL;
 }

 if (adev->asic_type == 128 || adev->asic_type == 133)
  adev->gmc.xgmi.supported = 1;

 if (adev->flags & AMD_IS_APU)
  adev->nbio_funcs = &nbio_v7_0_funcs;
 else if (adev->asic_type == 128 ||
  adev->asic_type == 133)
  adev->nbio_funcs = &nbio_v7_4_funcs;
 else
  adev->nbio_funcs = &nbio_v6_1_funcs;

 if (adev->asic_type == 128 || adev->asic_type == 133)
  adev->df_funcs = &df_v3_6_funcs;
 else
  adev->df_funcs = &df_v1_7_funcs;

 adev->rev_id = soc15_get_rev_id(adev);
 adev->nbio_funcs->detect_hw_virt(adev);

 if (amdgpu_sriov_vf(adev))
  adev->virt.ops = &xgpu_ai_virt_ops;

 switch (adev->asic_type) {
 case 130:
 case 129:
 case 128:
  amdgpu_device_ip_block_add(adev, &vega10_common_ip_block);
  amdgpu_device_ip_block_add(adev, &gmc_v9_0_ip_block);


  if (amdgpu_sriov_vf(adev)) {
   if (likely(adev->firmware.load_type == AMDGPU_FW_LOAD_PSP)) {
    if (adev->asic_type == 128)
     amdgpu_device_ip_block_add(adev, &psp_v11_0_ip_block);
    else
     amdgpu_device_ip_block_add(adev, &psp_v3_1_ip_block);
   }
   amdgpu_device_ip_block_add(adev, &vega10_ih_ip_block);
  } else {
   amdgpu_device_ip_block_add(adev, &vega10_ih_ip_block);
   if (likely(adev->firmware.load_type == AMDGPU_FW_LOAD_PSP)) {
    if (adev->asic_type == 128)
     amdgpu_device_ip_block_add(adev, &psp_v11_0_ip_block);
    else
     amdgpu_device_ip_block_add(adev, &psp_v3_1_ip_block);
   }
  }
  amdgpu_device_ip_block_add(adev, &gfx_v9_0_ip_block);
  amdgpu_device_ip_block_add(adev, &sdma_v4_0_ip_block);
  if (!amdgpu_sriov_vf(adev)) {
   if (is_support_sw_smu(adev))
    amdgpu_device_ip_block_add(adev, &smu_v11_0_ip_block);
   else
    amdgpu_device_ip_block_add(adev, &pp_smu_ip_block);
  }
  if (adev->enable_virtual_display || amdgpu_sriov_vf(adev))
   amdgpu_device_ip_block_add(adev, &dce_virtual_ip_block);




  if (!(adev->asic_type == 128 && amdgpu_sriov_vf(adev))) {
   amdgpu_device_ip_block_add(adev, &uvd_v7_0_ip_block);
   amdgpu_device_ip_block_add(adev, &vce_v4_0_ip_block);
  }
  break;
 case 132:
  amdgpu_device_ip_block_add(adev, &vega10_common_ip_block);
  amdgpu_device_ip_block_add(adev, &gmc_v9_0_ip_block);
  amdgpu_device_ip_block_add(adev, &vega10_ih_ip_block);
  if (likely(adev->firmware.load_type == AMDGPU_FW_LOAD_PSP))
   amdgpu_device_ip_block_add(adev, &psp_v10_0_ip_block);
  amdgpu_device_ip_block_add(adev, &gfx_v9_0_ip_block);
  amdgpu_device_ip_block_add(adev, &sdma_v4_0_ip_block);
  amdgpu_device_ip_block_add(adev, &pp_smu_ip_block);
  if (adev->enable_virtual_display || amdgpu_sriov_vf(adev))
   amdgpu_device_ip_block_add(adev, &dce_virtual_ip_block);




  amdgpu_device_ip_block_add(adev, &vcn_v1_0_ip_block);
  break;
 case 133:
  amdgpu_device_ip_block_add(adev, &vega10_common_ip_block);
  amdgpu_device_ip_block_add(adev, &gmc_v9_0_ip_block);
  amdgpu_device_ip_block_add(adev, &vega10_ih_ip_block);
  if (adev->enable_virtual_display || amdgpu_sriov_vf(adev))
   amdgpu_device_ip_block_add(adev, &dce_virtual_ip_block);
  amdgpu_device_ip_block_add(adev, &gfx_v9_0_ip_block);
  amdgpu_device_ip_block_add(adev, &sdma_v4_0_ip_block);
  amdgpu_device_ip_block_add(adev, &smu_v11_0_ip_block);
  amdgpu_device_ip_block_add(adev, &vcn_v2_5_ip_block);
  break;
 case 131:
  amdgpu_device_ip_block_add(adev, &vega10_common_ip_block);
  amdgpu_device_ip_block_add(adev, &gmc_v9_0_ip_block);
  amdgpu_device_ip_block_add(adev, &vega10_ih_ip_block);
  if (likely(adev->firmware.load_type == AMDGPU_FW_LOAD_PSP))
   amdgpu_device_ip_block_add(adev, &psp_v12_0_ip_block);
  if (is_support_sw_smu(adev))
   amdgpu_device_ip_block_add(adev, &smu_v12_0_ip_block);
  amdgpu_device_ip_block_add(adev, &gfx_v9_0_ip_block);
  amdgpu_device_ip_block_add(adev, &sdma_v4_0_ip_block);
  if (adev->enable_virtual_display || amdgpu_sriov_vf(adev))
   amdgpu_device_ip_block_add(adev, &dce_virtual_ip_block);




  amdgpu_device_ip_block_add(adev, &vcn_v2_0_ip_block);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
