
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {scalar_t__ asic_type; } ;


 scalar_t__ CHIP_ARCTURUS ;
 int amdgpu_gart_table_vram_unpin (struct amdgpu_device*) ;
 int gfxhub_v1_0_gart_disable (struct amdgpu_device*) ;
 int mmhub_v1_0_gart_disable (struct amdgpu_device*) ;
 int mmhub_v9_4_gart_disable (struct amdgpu_device*) ;

__attribute__((used)) static void gmc_v9_0_gart_disable(struct amdgpu_device *adev)
{
 gfxhub_v1_0_gart_disable(adev);
 if (adev->asic_type == CHIP_ARCTURUS)
  mmhub_v9_4_gart_disable(adev);
 else
  mmhub_v1_0_gart_disable(adev);
 amdgpu_gart_table_vram_unpin(adev);
}
