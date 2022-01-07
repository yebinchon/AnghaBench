
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {int gpu_addr; int sync_seq; } ;
struct amdgpu_ring {TYPE_2__ fence_drv; TYPE_1__* funcs; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 scalar_t__ AMDGPU_RING_TYPE_GFX ;
 int gfx_v9_0_wait_reg_mem (struct amdgpu_ring*,int,int,int ,int ,int ,int ,int,int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void gfx_v9_0_ring_emit_pipeline_sync(struct amdgpu_ring *ring)
{
 int usepfp = (ring->funcs->type == AMDGPU_RING_TYPE_GFX);
 uint32_t seq = ring->fence_drv.sync_seq;
 uint64_t addr = ring->fence_drv.gpu_addr;

 gfx_v9_0_wait_reg_mem(ring, usepfp, 1, 0,
         lower_32_bits(addr), upper_32_bits(addr),
         seq, 0xffffffff, 4);
}
