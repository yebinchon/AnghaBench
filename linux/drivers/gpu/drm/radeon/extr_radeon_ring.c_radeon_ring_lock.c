
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ring {int dummy; } ;
struct radeon_device {int ring_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_ring_alloc (struct radeon_device*,struct radeon_ring*,unsigned int) ;

int radeon_ring_lock(struct radeon_device *rdev, struct radeon_ring *ring, unsigned ndw)
{
 int r;

 mutex_lock(&rdev->ring_lock);
 r = radeon_ring_alloc(rdev, ring, ndw);
 if (r) {
  mutex_unlock(&rdev->ring_lock);
  return r;
 }
 return 0;
}
