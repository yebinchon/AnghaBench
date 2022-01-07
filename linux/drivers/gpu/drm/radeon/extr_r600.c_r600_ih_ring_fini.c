
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ring_obj; int * ring; } ;
struct radeon_device {TYPE_1__ ih; } ;


 scalar_t__ likely (int) ;
 int radeon_bo_kunmap (int *) ;
 int radeon_bo_reserve (int *,int) ;
 int radeon_bo_unpin (int *) ;
 int radeon_bo_unref (int **) ;
 int radeon_bo_unreserve (int *) ;

void r600_ih_ring_fini(struct radeon_device *rdev)
{
 int r;
 if (rdev->ih.ring_obj) {
  r = radeon_bo_reserve(rdev->ih.ring_obj, 0);
  if (likely(r == 0)) {
   radeon_bo_kunmap(rdev->ih.ring_obj);
   radeon_bo_unpin(rdev->ih.ring_obj);
   radeon_bo_unreserve(rdev->ih.ring_obj);
  }
  radeon_bo_unref(&rdev->ih.ring_obj);
  rdev->ih.ring = ((void*)0);
  rdev->ih.ring_obj = ((void*)0);
 }
}
