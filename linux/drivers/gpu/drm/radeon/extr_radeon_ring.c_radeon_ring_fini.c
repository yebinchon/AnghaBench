
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int ready; struct radeon_bo* ring_obj; int * ring; } ;
struct radeon_device {int ring_lock; } ;
struct radeon_bo {int dummy; } ;


 scalar_t__ likely (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_bo_kunmap (struct radeon_bo*) ;
 int radeon_bo_reserve (struct radeon_bo*,int) ;
 int radeon_bo_unpin (struct radeon_bo*) ;
 int radeon_bo_unref (struct radeon_bo**) ;
 int radeon_bo_unreserve (struct radeon_bo*) ;

void radeon_ring_fini(struct radeon_device *rdev, struct radeon_ring *ring)
{
 int r;
 struct radeon_bo *ring_obj;

 mutex_lock(&rdev->ring_lock);
 ring_obj = ring->ring_obj;
 ring->ready = 0;
 ring->ring = ((void*)0);
 ring->ring_obj = ((void*)0);
 mutex_unlock(&rdev->ring_lock);

 if (ring_obj) {
  r = radeon_bo_reserve(ring_obj, 0);
  if (likely(r == 0)) {
   radeon_bo_kunmap(ring_obj);
   radeon_bo_unpin(ring_obj);
   radeon_bo_unreserve(ring_obj);
  }
  radeon_bo_unref(&ring_obj);
 }
}
