
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * robj; int table_size; } ;
struct radeon_device {TYPE_1__ gart; } ;


 int PAGE_SIZE ;
 int RADEON_GEM_DOMAIN_VRAM ;
 int radeon_bo_create (struct radeon_device*,int ,int ,int,int ,int ,int *,int *,int **) ;

int radeon_gart_table_vram_alloc(struct radeon_device *rdev)
{
 int r;

 if (rdev->gart.robj == ((void*)0)) {
  r = radeon_bo_create(rdev, rdev->gart.table_size,
         PAGE_SIZE, 1, RADEON_GEM_DOMAIN_VRAM,
         0, ((void*)0), ((void*)0), &rdev->gart.robj);
  if (r) {
   return r;
  }
 }
 return 0;
}
