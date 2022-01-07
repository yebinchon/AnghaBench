
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_compute_rings; scalar_t__ num_gfx_rings; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_1__ gfx; } ;


 int AMDGPU_MAX_COMPUTE_RINGS ;
 scalar_t__ CHIP_ARCTURUS ;
 scalar_t__ GFX9_NUM_GFX_RINGS ;
 int gfx_v9_0_set_gds_init (struct amdgpu_device*) ;
 int gfx_v9_0_set_irq_funcs (struct amdgpu_device*) ;
 int gfx_v9_0_set_ring_funcs (struct amdgpu_device*) ;
 int gfx_v9_0_set_rlc_funcs (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v9_0_early_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (adev->asic_type == CHIP_ARCTURUS)
  adev->gfx.num_gfx_rings = 0;
 else
  adev->gfx.num_gfx_rings = GFX9_NUM_GFX_RINGS;
 adev->gfx.num_compute_rings = AMDGPU_MAX_COMPUTE_RINGS;
 gfx_v9_0_set_ring_funcs(adev);
 gfx_v9_0_set_irq_funcs(adev);
 gfx_v9_0_set_gds_init(adev);
 gfx_v9_0_set_rlc_funcs(adev);

 return 0;
}
