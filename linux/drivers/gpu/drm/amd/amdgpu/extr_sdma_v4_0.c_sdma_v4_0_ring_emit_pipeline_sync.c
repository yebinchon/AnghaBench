
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_2__ {int gpu_addr; int sync_seq; } ;
struct amdgpu_ring {TYPE_1__ fence_drv; } ;


 int sdma_v4_0_wait_reg_mem (struct amdgpu_ring*,int,int ,int,int,int ,int,int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void sdma_v4_0_ring_emit_pipeline_sync(struct amdgpu_ring *ring)
{
 uint32_t seq = ring->fence_drv.sync_seq;
 uint64_t addr = ring->fence_drv.gpu_addr;


 sdma_v4_0_wait_reg_mem(ring, 1, 0,
          addr & 0xfffffffc,
          upper_32_bits(addr) & 0xffffffff,
          seq, 0xffffffff, 4);
}
