
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * funcs; } ;
struct TYPE_9__ {TYPE_3__ ring; } ;
struct TYPE_10__ {int num_gfx_rings; int num_compute_rings; TYPE_2__* compute_ring; TYPE_1__* gfx_ring; TYPE_4__ kiq; } ;
struct amdgpu_device {TYPE_5__ gfx; } ;
struct TYPE_7__ {int * funcs; } ;
struct TYPE_6__ {int * funcs; } ;


 int gfx_v9_0_ring_funcs_compute ;
 int gfx_v9_0_ring_funcs_gfx ;
 int gfx_v9_0_ring_funcs_kiq ;

__attribute__((used)) static void gfx_v9_0_set_ring_funcs(struct amdgpu_device *adev)
{
 int i;

 adev->gfx.kiq.ring.funcs = &gfx_v9_0_ring_funcs_kiq;

 for (i = 0; i < adev->gfx.num_gfx_rings; i++)
  adev->gfx.gfx_ring[i].funcs = &gfx_v9_0_ring_funcs_gfx;

 for (i = 0; i < adev->gfx.num_compute_rings; i++)
  adev->gfx.compute_ring[i].funcs = &gfx_v9_0_ring_funcs_compute;
}
