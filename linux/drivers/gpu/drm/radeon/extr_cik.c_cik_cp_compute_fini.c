
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_device {TYPE_1__* ring; int dev; } ;
struct TYPE_2__ {int * mqd_obj; } ;


 int CAYMAN_RING_TYPE_CP1_INDEX ;
 int CAYMAN_RING_TYPE_CP2_INDEX ;
 int cik_cp_compute_enable (struct radeon_device*,int) ;
 int dev_warn (int ,char*,int) ;
 int radeon_bo_reserve (int *,int) ;
 int radeon_bo_unpin (int *) ;
 int radeon_bo_unref (int **) ;
 int radeon_bo_unreserve (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void cik_cp_compute_fini(struct radeon_device *rdev)
{
 int i, idx, r;

 cik_cp_compute_enable(rdev, 0);

 for (i = 0; i < 2; i++) {
  if (i == 0)
   idx = CAYMAN_RING_TYPE_CP1_INDEX;
  else
   idx = CAYMAN_RING_TYPE_CP2_INDEX;

  if (rdev->ring[idx].mqd_obj) {
   r = radeon_bo_reserve(rdev->ring[idx].mqd_obj, 0);
   if (unlikely(r != 0))
    dev_warn(rdev->dev, "(%d) reserve MQD bo failed\n", r);

   radeon_bo_unpin(rdev->ring[idx].mqd_obj);
   radeon_bo_unreserve(rdev->ring[idx].mqd_obj);

   radeon_bo_unref(&rdev->ring[idx].mqd_obj);
   rdev->ring[idx].mqd_obj = ((void*)0);
  }
 }
}
