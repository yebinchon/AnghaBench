
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct amdgpu_gmc {int dummy; } ;
struct TYPE_5__ {int physical_node_id; int node_segment_size; } ;
struct TYPE_6__ {TYPE_2__ xgmi; } ;
struct TYPE_4__ {int vram_base_offset; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_3__ gmc; TYPE_1__ vm_manager; } ;


 scalar_t__ CHIP_ARCTURUS ;
 int amdgpu_gmc_agp_location (struct amdgpu_device*,struct amdgpu_gmc*) ;
 int amdgpu_gmc_gart_location (struct amdgpu_device*,struct amdgpu_gmc*) ;
 int amdgpu_gmc_vram_location (struct amdgpu_device*,struct amdgpu_gmc*,int) ;
 int amdgpu_sriov_vf (struct amdgpu_device*) ;
 int gfxhub_v1_0_get_mc_fb_offset (struct amdgpu_device*) ;
 int mmhub_v1_0_get_fb_location (struct amdgpu_device*) ;
 int mmhub_v9_4_get_fb_location (struct amdgpu_device*) ;

__attribute__((used)) static void gmc_v9_0_vram_gtt_location(struct amdgpu_device *adev,
     struct amdgpu_gmc *mc)
{
 u64 base = 0;

 if (adev->asic_type == CHIP_ARCTURUS)
  base = mmhub_v9_4_get_fb_location(adev);
 else if (!amdgpu_sriov_vf(adev))
  base = mmhub_v1_0_get_fb_location(adev);


 base += adev->gmc.xgmi.physical_node_id * adev->gmc.xgmi.node_segment_size;
 amdgpu_gmc_vram_location(adev, mc, base);
 amdgpu_gmc_gart_location(adev, mc);
 amdgpu_gmc_agp_location(adev, mc);

 adev->vm_manager.vram_base_offset = gfxhub_v1_0_get_mc_fb_offset(adev);


 adev->vm_manager.vram_base_offset +=
  adev->gmc.xgmi.physical_node_id * adev->gmc.xgmi.node_segment_size;
}
