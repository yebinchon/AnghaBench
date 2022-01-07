
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct amdgpu_ring {int me; int pipe; TYPE_1__* funcs; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ AMDGPU_RING_TYPE_COMPUTE ;
 scalar_t__ AMDGPU_RING_TYPE_KIQ ;
 int GPU_HDP_FLUSH_DONE__CP0_MASK ;
 int GPU_HDP_FLUSH_DONE__CP2_MASK ;
 int GPU_HDP_FLUSH_DONE__CP6_MASK ;
 int PACKET3 (int ,int) ;
 int PACKET3_WAIT_REG_MEM ;
 int WAIT_REG_MEM_ENGINE (int) ;
 int WAIT_REG_MEM_FUNCTION (int) ;
 int WAIT_REG_MEM_OPERATION (int) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int mmGPU_HDP_FLUSH_DONE ;
 int mmGPU_HDP_FLUSH_REQ ;

__attribute__((used)) static void gfx_v8_0_ring_emit_hdp_flush(struct amdgpu_ring *ring)
{
 u32 ref_and_mask, reg_mem_engine;

 if ((ring->funcs->type == AMDGPU_RING_TYPE_COMPUTE) ||
     (ring->funcs->type == AMDGPU_RING_TYPE_KIQ)) {
  switch (ring->me) {
  case 1:
   ref_and_mask = GPU_HDP_FLUSH_DONE__CP2_MASK << ring->pipe;
   break;
  case 2:
   ref_and_mask = GPU_HDP_FLUSH_DONE__CP6_MASK << ring->pipe;
   break;
  default:
   return;
  }
  reg_mem_engine = 0;
 } else {
  ref_and_mask = GPU_HDP_FLUSH_DONE__CP0_MASK;
  reg_mem_engine = WAIT_REG_MEM_ENGINE(1);
 }

 amdgpu_ring_write(ring, PACKET3(PACKET3_WAIT_REG_MEM, 5));
 amdgpu_ring_write(ring, (WAIT_REG_MEM_OPERATION(1) |
     WAIT_REG_MEM_FUNCTION(3) |
     reg_mem_engine));
 amdgpu_ring_write(ring, mmGPU_HDP_FLUSH_REQ);
 amdgpu_ring_write(ring, mmGPU_HDP_FLUSH_DONE);
 amdgpu_ring_write(ring, ref_and_mask);
 amdgpu_ring_write(ring, ref_and_mask);
 amdgpu_ring_write(ring, 0x20);
}
