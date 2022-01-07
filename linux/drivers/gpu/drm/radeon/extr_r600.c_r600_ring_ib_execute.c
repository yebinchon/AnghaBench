
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_ring {int rptr_save_reg; int wptr; int next_rptr_gpu_addr; } ;
struct radeon_ib {size_t ring; int gpu_addr; int length_dw; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct radeon_device {TYPE_1__ wb; struct radeon_ring* ring; } ;


 int PACKET3 (int ,int) ;
 int PACKET3_INDIRECT_BUFFER ;
 int PACKET3_MEM_WRITE ;
 int PACKET3_SET_CONFIG_REG ;
 int PACKET3_SET_CONFIG_REG_OFFSET ;
 int radeon_ring_write (struct radeon_ring*,int) ;
 int upper_32_bits (int) ;

void r600_ring_ib_execute(struct radeon_device *rdev, struct radeon_ib *ib)
{
 struct radeon_ring *ring = &rdev->ring[ib->ring];
 u32 next_rptr;

 if (ring->rptr_save_reg) {
  next_rptr = ring->wptr + 3 + 4;
  radeon_ring_write(ring, PACKET3(PACKET3_SET_CONFIG_REG, 1));
  radeon_ring_write(ring, ((ring->rptr_save_reg -
      PACKET3_SET_CONFIG_REG_OFFSET) >> 2));
  radeon_ring_write(ring, next_rptr);
 } else if (rdev->wb.enabled) {
  next_rptr = ring->wptr + 5 + 4;
  radeon_ring_write(ring, PACKET3(PACKET3_MEM_WRITE, 3));
  radeon_ring_write(ring, ring->next_rptr_gpu_addr & 0xfffffffc);
  radeon_ring_write(ring, (upper_32_bits(ring->next_rptr_gpu_addr) & 0xff) | (1 << 18));
  radeon_ring_write(ring, next_rptr);
  radeon_ring_write(ring, 0);
 }

 radeon_ring_write(ring, PACKET3(PACKET3_INDIRECT_BUFFER, 2));
 radeon_ring_write(ring,



     (ib->gpu_addr & 0xFFFFFFFC));
 radeon_ring_write(ring, upper_32_bits(ib->gpu_addr) & 0xFF);
 radeon_ring_write(ring, ib->length_dw);
}
