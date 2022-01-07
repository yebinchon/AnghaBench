
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * funcs; } ;
struct TYPE_4__ {TYPE_1__ rlc; int * funcs; int num_compute_rings; int num_gfx_rings; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int AMDGPU_MAX_COMPUTE_RINGS ;
 int GFX7_NUM_GFX_RINGS ;
 int gfx_v7_0_gfx_funcs ;
 int gfx_v7_0_rlc_funcs ;
 int gfx_v7_0_set_gds_init (struct amdgpu_device*) ;
 int gfx_v7_0_set_irq_funcs (struct amdgpu_device*) ;
 int gfx_v7_0_set_ring_funcs (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v7_0_early_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 adev->gfx.num_gfx_rings = GFX7_NUM_GFX_RINGS;
 adev->gfx.num_compute_rings = AMDGPU_MAX_COMPUTE_RINGS;
 adev->gfx.funcs = &gfx_v7_0_gfx_funcs;
 adev->gfx.rlc.funcs = &gfx_v7_0_rlc_funcs;
 gfx_v7_0_set_ring_funcs(adev);
 gfx_v7_0_set_irq_funcs(adev);
 gfx_v7_0_set_gds_init(adev);

 return 0;
}
