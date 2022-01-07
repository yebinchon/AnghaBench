
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int sync_seq; int gpu_addr; } ;
struct amdgpu_ring {TYPE_1__ fence_drv; } ;


 int SDMA_OPCODE_POLL_REG_MEM ;
 int SDMA_PACKET (int ,int ,int) ;
 int SDMA_POLL_REG_MEM_EXTRA_FUNC (int) ;
 int SDMA_POLL_REG_MEM_EXTRA_M ;
 int SDMA_POLL_REG_MEM_EXTRA_OP (int ) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void cik_sdma_ring_emit_pipeline_sync(struct amdgpu_ring *ring)
{
 uint32_t seq = ring->fence_drv.sync_seq;
 uint64_t addr = ring->fence_drv.gpu_addr;


 amdgpu_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_POLL_REG_MEM, 0,
         SDMA_POLL_REG_MEM_EXTRA_OP(0) |
         SDMA_POLL_REG_MEM_EXTRA_FUNC(3) |
         SDMA_POLL_REG_MEM_EXTRA_M));
 amdgpu_ring_write(ring, addr & 0xfffffffc);
 amdgpu_ring_write(ring, upper_32_bits(addr) & 0xffffffff);
 amdgpu_ring_write(ring, seq);
 amdgpu_ring_write(ring, 0xffffffff);
 amdgpu_ring_write(ring, (0xfff << 16) | 4);
}
