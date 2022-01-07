
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_placement; } ;
struct amdgpu_bo {TYPE_2__* placements; TYPE_1__ placement; } ;
struct TYPE_4__ {int fpfn; int lpfn; } ;


 int PAGE_SHIFT ;

__attribute__((used)) static void amdgpu_uvd_force_into_uvd_segment(struct amdgpu_bo *abo)
{
 int i;
 for (i = 0; i < abo->placement.num_placement; ++i) {
  abo->placements[i].fpfn = 0 >> PAGE_SHIFT;
  abo->placements[i].lpfn = (256 * 1024 * 1024) >> PAGE_SHIFT;
 }
}
