
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int ib_pool_ready; int ring_tmp_bo; } ;


 int radeon_sa_bo_manager_fini (struct radeon_device*,int *) ;
 int radeon_sa_bo_manager_suspend (struct radeon_device*,int *) ;

void radeon_ib_pool_fini(struct radeon_device *rdev)
{
 if (rdev->ib_pool_ready) {
  radeon_sa_bo_manager_suspend(rdev, &rdev->ring_tmp_bo);
  radeon_sa_bo_manager_fini(rdev, &rdev->ring_tmp_bo);
  rdev->ib_pool_ready = 0;
 }
}
