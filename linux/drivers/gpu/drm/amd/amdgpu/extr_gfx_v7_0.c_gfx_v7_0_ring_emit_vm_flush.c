
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct amdgpu_ring {TYPE_1__* funcs; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ AMDGPU_RING_TYPE_GFX ;
 int PACKET3 (int ,int) ;
 int PACKET3_PFP_SYNC_ME ;
 int PACKET3_SWITCH_BUFFER ;
 int PACKET3_WAIT_REG_MEM ;
 int WAIT_REG_MEM_ENGINE (int ) ;
 int WAIT_REG_MEM_FUNCTION (int ) ;
 int WAIT_REG_MEM_OPERATION (int ) ;
 int amdgpu_gmc_emit_flush_gpu_tlb (struct amdgpu_ring*,unsigned int,int ) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int mmVM_INVALIDATE_REQUEST ;

__attribute__((used)) static void gfx_v7_0_ring_emit_vm_flush(struct amdgpu_ring *ring,
     unsigned vmid, uint64_t pd_addr)
{
 int usepfp = (ring->funcs->type == AMDGPU_RING_TYPE_GFX);

 amdgpu_gmc_emit_flush_gpu_tlb(ring, vmid, pd_addr);


 amdgpu_ring_write(ring, PACKET3(PACKET3_WAIT_REG_MEM, 5));
 amdgpu_ring_write(ring, (WAIT_REG_MEM_OPERATION(0) |
     WAIT_REG_MEM_FUNCTION(0) |
     WAIT_REG_MEM_ENGINE(0)));
 amdgpu_ring_write(ring, mmVM_INVALIDATE_REQUEST);
 amdgpu_ring_write(ring, 0);
 amdgpu_ring_write(ring, 0);
 amdgpu_ring_write(ring, 0);
 amdgpu_ring_write(ring, 0x20);


 if (usepfp) {

  amdgpu_ring_write(ring, PACKET3(PACKET3_PFP_SYNC_ME, 0));
  amdgpu_ring_write(ring, 0x0);


  amdgpu_ring_write(ring, PACKET3(PACKET3_SWITCH_BUFFER, 0));
  amdgpu_ring_write(ring, 0);
  amdgpu_ring_write(ring, PACKET3(PACKET3_SWITCH_BUFFER, 0));
  amdgpu_ring_write(ring, 0);
 }
}
