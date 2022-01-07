
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int num_gfx_rings; int num_compute_rings; TYPE_1__* compute_ring; TYPE_2__* gfx_ring; } ;
struct amdgpu_device {TYPE_3__ gfx; } ;
struct TYPE_5__ {int * funcs; } ;
struct TYPE_4__ {int * funcs; } ;


 int gfx_v6_0_ring_funcs_compute ;
 int gfx_v6_0_ring_funcs_gfx ;

__attribute__((used)) static void gfx_v6_0_set_ring_funcs(struct amdgpu_device *adev)
{
 int i;

 for (i = 0; i < adev->gfx.num_gfx_rings; i++)
  adev->gfx.gfx_ring[i].funcs = &gfx_v6_0_ring_funcs_gfx;
 for (i = 0; i < adev->gfx.num_compute_rings; i++)
  adev->gfx.compute_ring[i].funcs = &gfx_v6_0_ring_funcs_compute;
}
