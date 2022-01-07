
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * wb_obj; int * wb; } ;
struct radeon_device {TYPE_1__ wb; } ;


 int radeon_bo_kunmap (int *) ;
 int radeon_bo_reserve (int *,int) ;
 int radeon_bo_unpin (int *) ;
 int radeon_bo_unref (int **) ;
 int radeon_bo_unreserve (int *) ;
 int radeon_wb_disable (struct radeon_device*) ;

void radeon_wb_fini(struct radeon_device *rdev)
{
 radeon_wb_disable(rdev);
 if (rdev->wb.wb_obj) {
  if (!radeon_bo_reserve(rdev->wb.wb_obj, 0)) {
   radeon_bo_kunmap(rdev->wb.wb_obj);
   radeon_bo_unpin(rdev->wb.wb_obj);
   radeon_bo_unreserve(rdev->wb.wb_obj);
  }
  radeon_bo_unref(&rdev->wb.wb_obj);
  rdev->wb.wb = ((void*)0);
  rdev->wb.wb_obj = ((void*)0);
 }
}
