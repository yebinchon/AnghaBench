
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int num_uvd_inst; int harvest_config; int num_enc_rings; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_1__ uvd; } ;


 int AMDGPU_UVD_HARVEST_UVD0 ;
 int AMDGPU_UVD_HARVEST_UVD1 ;
 scalar_t__ CHIP_VEGA20 ;
 int ENOENT ;
 int RREG32_SOC15 (int ,int,int ) ;
 int UVD ;
 int UVD7_MAX_HW_INSTANCES_VEGA20 ;
 int UVD_PG0_CC_UVD_HARVESTING__UVD_DISABLE_MASK ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int mmUVD_PG0_CC_UVD_HARVESTING ;
 int uvd_v7_0_set_enc_ring_funcs (struct amdgpu_device*) ;
 int uvd_v7_0_set_irq_funcs (struct amdgpu_device*) ;
 int uvd_v7_0_set_ring_funcs (struct amdgpu_device*) ;

__attribute__((used)) static int uvd_v7_0_early_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (adev->asic_type == CHIP_VEGA20) {
  u32 harvest;
  int i;

  adev->uvd.num_uvd_inst = UVD7_MAX_HW_INSTANCES_VEGA20;
  for (i = 0; i < adev->uvd.num_uvd_inst; i++) {
   harvest = RREG32_SOC15(UVD, i, mmUVD_PG0_CC_UVD_HARVESTING);
   if (harvest & UVD_PG0_CC_UVD_HARVESTING__UVD_DISABLE_MASK) {
    adev->uvd.harvest_config |= 1 << i;
   }
  }
  if (adev->uvd.harvest_config == (AMDGPU_UVD_HARVEST_UVD0 |
       AMDGPU_UVD_HARVEST_UVD1))

   return -ENOENT;
 } else {
  adev->uvd.num_uvd_inst = 1;
 }

 if (amdgpu_sriov_vf(adev))
  adev->uvd.num_enc_rings = 1;
 else
  adev->uvd.num_enc_rings = 2;
 uvd_v7_0_set_ring_funcs(adev);
 uvd_v7_0_set_enc_ring_funcs(adev);
 uvd_v7_0_set_irq_funcs(adev);

 return 0;
}
