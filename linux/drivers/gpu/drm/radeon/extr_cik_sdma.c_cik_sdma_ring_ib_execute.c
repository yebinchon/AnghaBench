
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct radeon_ring {int wptr; int next_rptr_gpu_addr; } ;
struct radeon_ib {size_t ring; int gpu_addr; int length_dw; TYPE_2__* vm; } ;
struct TYPE_6__ {scalar_t__ enabled; } ;
struct radeon_device {TYPE_3__ wb; struct radeon_ring* ring; } ;
struct TYPE_5__ {TYPE_1__* ids; } ;
struct TYPE_4__ {int id; } ;


 int SDMA_OPCODE_INDIRECT_BUFFER ;
 int SDMA_OPCODE_NOP ;
 int SDMA_OPCODE_WRITE ;
 int SDMA_PACKET (int ,int ,int) ;
 int SDMA_WRITE_SUB_OPCODE_LINEAR ;
 int radeon_ring_write (struct radeon_ring*,int) ;
 int upper_32_bits (int) ;

void cik_sdma_ring_ib_execute(struct radeon_device *rdev,
         struct radeon_ib *ib)
{
 struct radeon_ring *ring = &rdev->ring[ib->ring];
 u32 extra_bits = (ib->vm ? ib->vm->ids[ib->ring].id : 0) & 0xf;

 if (rdev->wb.enabled) {
  u32 next_rptr = ring->wptr + 5;
  while ((next_rptr & 7) != 4)
   next_rptr++;
  next_rptr += 4;
  radeon_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_WRITE, SDMA_WRITE_SUB_OPCODE_LINEAR, 0));
  radeon_ring_write(ring, ring->next_rptr_gpu_addr & 0xfffffffc);
  radeon_ring_write(ring, upper_32_bits(ring->next_rptr_gpu_addr));
  radeon_ring_write(ring, 1);
  radeon_ring_write(ring, next_rptr);
 }


 while ((ring->wptr & 7) != 4)
  radeon_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_NOP, 0, 0));
 radeon_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_INDIRECT_BUFFER, 0, extra_bits));
 radeon_ring_write(ring, ib->gpu_addr & 0xffffffe0);
 radeon_ring_write(ring, upper_32_bits(ib->gpu_addr));
 radeon_ring_write(ring, ib->length_dw);

}
