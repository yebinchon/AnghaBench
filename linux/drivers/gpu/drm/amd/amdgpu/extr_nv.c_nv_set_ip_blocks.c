
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int load_type; } ;
struct amdgpu_device {int asic_type; TYPE_1__ firmware; int enable_virtual_display; int enable_mes; TYPE_2__* nbio_funcs; } ;
struct TYPE_4__ {int (* detect_hw_virt ) (struct amdgpu_device*) ;} ;


 int AMDGPU_FW_LOAD_DIRECT ;
 int AMDGPU_FW_LOAD_PSP ;



 int EINVAL ;
 int amdgpu_device_has_dc_support (struct amdgpu_device*) ;
 int amdgpu_device_ip_block_add (struct amdgpu_device*,int *) ;
 int amdgpu_sriov_vf (struct amdgpu_device*) ;
 int dce_virtual_ip_block ;
 int dm_ip_block ;
 int gfx_v10_0_ip_block ;
 int gmc_v10_0_ip_block ;
 int is_support_sw_smu (struct amdgpu_device*) ;
 int mes_v10_1_ip_block ;
 int navi10_ih_ip_block ;
 TYPE_2__ nbio_v2_3_funcs ;
 int nv_common_ip_block ;
 int nv_reg_base_init (struct amdgpu_device*) ;
 int psp_v11_0_ip_block ;
 int sdma_v5_0_ip_block ;
 int smu_v11_0_ip_block ;
 int stub1 (struct amdgpu_device*) ;
 int vcn_v2_0_ip_block ;

int nv_set_ip_blocks(struct amdgpu_device *adev)
{
 int r;


 r = nv_reg_base_init(adev);
 if (r)
  return r;

 adev->nbio_funcs = &nbio_v2_3_funcs;

 adev->nbio_funcs->detect_hw_virt(adev);

 switch (adev->asic_type) {
 case 130:
 case 128:
  amdgpu_device_ip_block_add(adev, &nv_common_ip_block);
  amdgpu_device_ip_block_add(adev, &gmc_v10_0_ip_block);
  amdgpu_device_ip_block_add(adev, &navi10_ih_ip_block);
  amdgpu_device_ip_block_add(adev, &psp_v11_0_ip_block);
  if (adev->firmware.load_type == AMDGPU_FW_LOAD_PSP &&
      is_support_sw_smu(adev))
   amdgpu_device_ip_block_add(adev, &smu_v11_0_ip_block);
  if (adev->enable_virtual_display || amdgpu_sriov_vf(adev))
   amdgpu_device_ip_block_add(adev, &dce_virtual_ip_block);




  amdgpu_device_ip_block_add(adev, &gfx_v10_0_ip_block);
  amdgpu_device_ip_block_add(adev, &sdma_v5_0_ip_block);
  if (adev->firmware.load_type == AMDGPU_FW_LOAD_DIRECT &&
      is_support_sw_smu(adev))
   amdgpu_device_ip_block_add(adev, &smu_v11_0_ip_block);
  amdgpu_device_ip_block_add(adev, &vcn_v2_0_ip_block);
  if (adev->enable_mes)
   amdgpu_device_ip_block_add(adev, &mes_v10_1_ip_block);
  break;
 case 129:
  amdgpu_device_ip_block_add(adev, &nv_common_ip_block);
  amdgpu_device_ip_block_add(adev, &gmc_v10_0_ip_block);
  amdgpu_device_ip_block_add(adev, &navi10_ih_ip_block);
  amdgpu_device_ip_block_add(adev, &psp_v11_0_ip_block);
  if (adev->firmware.load_type == AMDGPU_FW_LOAD_PSP &&
      is_support_sw_smu(adev))
   amdgpu_device_ip_block_add(adev, &smu_v11_0_ip_block);
  if (adev->enable_virtual_display || amdgpu_sriov_vf(adev))
   amdgpu_device_ip_block_add(adev, &dce_virtual_ip_block);




  amdgpu_device_ip_block_add(adev, &gfx_v10_0_ip_block);
  amdgpu_device_ip_block_add(adev, &sdma_v5_0_ip_block);
  if (adev->firmware.load_type == AMDGPU_FW_LOAD_DIRECT &&
      is_support_sw_smu(adev))
   amdgpu_device_ip_block_add(adev, &smu_v11_0_ip_block);
  amdgpu_device_ip_block_add(adev, &vcn_v2_0_ip_block);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
