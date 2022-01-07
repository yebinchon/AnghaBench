
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ring {unsigned int buf_mask; int* ring; int wptr; } ;


 int BUG_ON (int) ;

__attribute__((used)) static void sdma_v5_0_ring_patch_cond_exec(struct amdgpu_ring *ring,
        unsigned offset)
{
 unsigned cur;

 BUG_ON(offset > ring->buf_mask);
 BUG_ON(ring->ring[offset] != 0x55aa55aa);

 cur = (ring->wptr - 1) & ring->buf_mask;
 if (cur > offset)
  ring->ring[offset] = cur - offset;
 else
  ring->ring[offset] = (ring->buf_mask + 1) - offset + cur;
}
