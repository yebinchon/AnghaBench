
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct amdgpu_gmc {int dummy; } ;
struct TYPE_2__ {int vram_base_offset; } ;
struct amdgpu_device {TYPE_1__ vm_manager; int gmc; } ;


 int amdgpu_gmc_gart_location (struct amdgpu_device*,struct amdgpu_gmc*) ;
 int amdgpu_gmc_vram_location (struct amdgpu_device*,int *,int ) ;
 int amdgpu_sriov_vf (struct amdgpu_device*) ;
 int gfxhub_v2_0_get_fb_location (struct amdgpu_device*) ;
 int gfxhub_v2_0_get_mc_fb_offset (struct amdgpu_device*) ;

__attribute__((used)) static void gmc_v10_0_vram_gtt_location(struct amdgpu_device *adev,
     struct amdgpu_gmc *mc)
{
 u64 base = 0;

 if (!amdgpu_sriov_vf(adev))
  base = gfxhub_v2_0_get_fb_location(adev);

 amdgpu_gmc_vram_location(adev, &adev->gmc, base);
 amdgpu_gmc_gart_location(adev, mc);


 adev->vm_manager.vram_base_offset = gfxhub_v2_0_get_mc_fb_offset(adev);
}
