
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int num_placement; int num_busy_placement; } ;
struct radeon_bo {TYPE_2__ placement; TYPE_1__* placements; } ;
struct TYPE_3__ {int fpfn; int lpfn; } ;


 int PAGE_SHIFT ;
 scalar_t__ RADEON_GEM_DOMAIN_VRAM ;

void radeon_uvd_force_into_uvd_segment(struct radeon_bo *rbo,
           uint32_t allowed_domains)
{
 int i;

 for (i = 0; i < rbo->placement.num_placement; ++i) {
  rbo->placements[i].fpfn = 0 >> PAGE_SHIFT;
  rbo->placements[i].lpfn = (256 * 1024 * 1024) >> PAGE_SHIFT;
 }


 if (allowed_domains == RADEON_GEM_DOMAIN_VRAM)
  return;


 if (rbo->placement.num_placement > 1)
  return;


 rbo->placements[1] = rbo->placements[0];
 rbo->placements[1].fpfn += (256 * 1024 * 1024) >> PAGE_SHIFT;
 rbo->placements[1].lpfn += (256 * 1024 * 1024) >> PAGE_SHIFT;
 rbo->placement.num_placement++;
 rbo->placement.num_busy_placement++;
}
