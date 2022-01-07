
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int amdgpu_gart_table_vram_unpin (struct amdgpu_device*) ;
 int gfxhub_v2_0_gart_disable (struct amdgpu_device*) ;
 int mmhub_v2_0_gart_disable (struct amdgpu_device*) ;

__attribute__((used)) static void gmc_v10_0_gart_disable(struct amdgpu_device *adev)
{
 gfxhub_v2_0_gart_disable(adev);
 mmhub_v2_0_gart_disable(adev);
 amdgpu_gart_table_vram_unpin(adev);
}
