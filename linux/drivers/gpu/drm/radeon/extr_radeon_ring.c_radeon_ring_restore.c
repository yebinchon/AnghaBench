
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_ring {int dummy; } ;
struct radeon_device {int dummy; } ;


 int kvfree (int *) ;
 int radeon_ring_lock (struct radeon_device*,struct radeon_ring*,unsigned int) ;
 int radeon_ring_unlock_commit (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_ring_write (struct radeon_ring*,int ) ;

int radeon_ring_restore(struct radeon_device *rdev, struct radeon_ring *ring,
   unsigned size, uint32_t *data)
{
 int i, r;

 if (!size || !data)
  return 0;


 r = radeon_ring_lock(rdev, ring, size);
 if (r)
  return r;

 for (i = 0; i < size; ++i) {
  radeon_ring_write(ring, data[i]);
 }

 radeon_ring_unlock_commit(rdev, ring, 0);
 kvfree(data);
 return 0;
}
