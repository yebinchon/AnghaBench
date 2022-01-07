
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int asic_type; int enable_virtual_display; } ;


 int BUG () ;





 int amdgpu_device_ip_block_add (struct amdgpu_device*,int *) ;
 int dce_v6_0_ip_block ;
 int dce_v6_4_ip_block ;
 int dce_virtual_ip_block ;
 int gfx_v6_0_ip_block ;
 int gmc_v6_0_ip_block ;
 int si_common_ip_block ;
 int si_detect_hw_virtualization (struct amdgpu_device*) ;
 int si_dma_ip_block ;
 int si_ih_ip_block ;
 int si_smu_ip_block ;

int si_set_ip_blocks(struct amdgpu_device *adev)
{
 si_detect_hw_virtualization(adev);

 switch (adev->asic_type) {
 case 128:
 case 129:
 case 130:
  amdgpu_device_ip_block_add(adev, &si_common_ip_block);
  amdgpu_device_ip_block_add(adev, &gmc_v6_0_ip_block);
  amdgpu_device_ip_block_add(adev, &si_ih_ip_block);
  amdgpu_device_ip_block_add(adev, &gfx_v6_0_ip_block);
  amdgpu_device_ip_block_add(adev, &si_dma_ip_block);
  amdgpu_device_ip_block_add(adev, &si_smu_ip_block);
  if (adev->enable_virtual_display)
   amdgpu_device_ip_block_add(adev, &dce_virtual_ip_block);
  else
   amdgpu_device_ip_block_add(adev, &dce_v6_0_ip_block);


  break;
 case 131:
  amdgpu_device_ip_block_add(adev, &si_common_ip_block);
  amdgpu_device_ip_block_add(adev, &gmc_v6_0_ip_block);
  amdgpu_device_ip_block_add(adev, &si_ih_ip_block);
  amdgpu_device_ip_block_add(adev, &gfx_v6_0_ip_block);
  amdgpu_device_ip_block_add(adev, &si_dma_ip_block);
  amdgpu_device_ip_block_add(adev, &si_smu_ip_block);
  if (adev->enable_virtual_display)
   amdgpu_device_ip_block_add(adev, &dce_virtual_ip_block);
  else
   amdgpu_device_ip_block_add(adev, &dce_v6_4_ip_block);



  break;
 case 132:
  amdgpu_device_ip_block_add(adev, &si_common_ip_block);
  amdgpu_device_ip_block_add(adev, &gmc_v6_0_ip_block);
  amdgpu_device_ip_block_add(adev, &si_ih_ip_block);
  amdgpu_device_ip_block_add(adev, &gfx_v6_0_ip_block);
  amdgpu_device_ip_block_add(adev, &si_dma_ip_block);
  amdgpu_device_ip_block_add(adev, &si_smu_ip_block);
  if (adev->enable_virtual_display)
   amdgpu_device_ip_block_add(adev, &dce_virtual_ip_block);
  break;
 default:
  BUG();
 }
 return 0;
}
