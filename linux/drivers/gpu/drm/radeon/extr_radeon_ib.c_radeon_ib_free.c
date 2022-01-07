
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ib {int fence; int sa_bo; int sync; } ;
struct radeon_device {int dummy; } ;


 int radeon_fence_unref (int *) ;
 int radeon_sa_bo_free (struct radeon_device*,int *,int ) ;
 int radeon_sync_free (struct radeon_device*,int *,int ) ;

void radeon_ib_free(struct radeon_device *rdev, struct radeon_ib *ib)
{
 radeon_sync_free(rdev, &ib->sync, ib->fence);
 radeon_sa_bo_free(rdev, &ib->sa_bo, ib->fence);
 radeon_fence_unref(&ib->fence);
}
