
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {int sync_seq; int gpu_addr; } ;
struct amdgpu_ring {TYPE_1__ fence_drv; TYPE_2__* funcs; } ;
struct TYPE_4__ {scalar_t__ type; } ;


 scalar_t__ AMDGPU_RING_TYPE_GFX ;
 int PACKET3 (int ,int) ;
 int PACKET3_SWITCH_BUFFER ;
 int PACKET3_WAIT_REG_MEM ;
 int WAIT_REG_MEM_ENGINE (int) ;
 int WAIT_REG_MEM_FUNCTION (int) ;
 int WAIT_REG_MEM_MEM_SPACE (int) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void gfx_v7_0_ring_emit_pipeline_sync(struct amdgpu_ring *ring)
{
 int usepfp = (ring->funcs->type == AMDGPU_RING_TYPE_GFX);
 uint32_t seq = ring->fence_drv.sync_seq;
 uint64_t addr = ring->fence_drv.gpu_addr;

 amdgpu_ring_write(ring, PACKET3(PACKET3_WAIT_REG_MEM, 5));
 amdgpu_ring_write(ring, (WAIT_REG_MEM_MEM_SPACE(1) |
     WAIT_REG_MEM_FUNCTION(3) |
     WAIT_REG_MEM_ENGINE(usepfp)));
 amdgpu_ring_write(ring, addr & 0xfffffffc);
 amdgpu_ring_write(ring, upper_32_bits(addr) & 0xffffffff);
 amdgpu_ring_write(ring, seq);
 amdgpu_ring_write(ring, 0xffffffff);
 amdgpu_ring_write(ring, 4);

 if (usepfp) {

  amdgpu_ring_write(ring, PACKET3(PACKET3_SWITCH_BUFFER, 0));
  amdgpu_ring_write(ring, 0);
  amdgpu_ring_write(ring, PACKET3(PACKET3_SWITCH_BUFFER, 0));
  amdgpu_ring_write(ring, 0);
 }
}
