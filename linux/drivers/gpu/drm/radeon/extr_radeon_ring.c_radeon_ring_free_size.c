
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct radeon_ring {int ring_free_dw; int ring_size; int wptr; int ptr_mask; } ;
struct radeon_device {int dummy; } ;


 int radeon_ring_get_rptr (struct radeon_device*,struct radeon_ring*) ;
 int radeon_ring_lockup_update (struct radeon_device*,struct radeon_ring*) ;

void radeon_ring_free_size(struct radeon_device *rdev, struct radeon_ring *ring)
{
 uint32_t rptr = radeon_ring_get_rptr(rdev, ring);


 ring->ring_free_dw = rptr + (ring->ring_size / 4);
 ring->ring_free_dw -= ring->wptr;
 ring->ring_free_dw &= ring->ptr_mask;
 if (!ring->ring_free_dw) {

  ring->ring_free_dw = ring->ring_size / 4;

  radeon_ring_lockup_update(rdev, ring);
 }
}
