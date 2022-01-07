
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_compute_rings; int num_gfx_rings; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;


 int AMDGPU_MAX_COMPUTE_RINGS ;
 int GFX10_NUM_GFX_RINGS ;
 int gfx_v10_0_set_gds_init (struct amdgpu_device*) ;
 int gfx_v10_0_set_irq_funcs (struct amdgpu_device*) ;
 int gfx_v10_0_set_kiq_pm4_funcs (struct amdgpu_device*) ;
 int gfx_v10_0_set_ring_funcs (struct amdgpu_device*) ;
 int gfx_v10_0_set_rlc_funcs (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v10_0_early_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 adev->gfx.num_gfx_rings = GFX10_NUM_GFX_RINGS;
 adev->gfx.num_compute_rings = AMDGPU_MAX_COMPUTE_RINGS;

 gfx_v10_0_set_kiq_pm4_funcs(adev);
 gfx_v10_0_set_ring_funcs(adev);
 gfx_v10_0_set_irq_funcs(adev);
 gfx_v10_0_set_gds_init(adev);
 gfx_v10_0_set_rlc_funcs(adev);

 return 0;
}
