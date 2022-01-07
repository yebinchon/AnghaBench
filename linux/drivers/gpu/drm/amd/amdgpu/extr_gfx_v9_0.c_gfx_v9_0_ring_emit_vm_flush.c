
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct amdgpu_ring {TYPE_1__* funcs; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ AMDGPU_RING_TYPE_GFX ;
 int PACKET3 (int ,int ) ;
 int PACKET3_PFP_SYNC_ME ;
 int amdgpu_gmc_emit_flush_gpu_tlb (struct amdgpu_ring*,unsigned int,int ) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;

__attribute__((used)) static void gfx_v9_0_ring_emit_vm_flush(struct amdgpu_ring *ring,
     unsigned vmid, uint64_t pd_addr)
{
 amdgpu_gmc_emit_flush_gpu_tlb(ring, vmid, pd_addr);


 if (ring->funcs->type == AMDGPU_RING_TYPE_GFX) {

  amdgpu_ring_write(ring, PACKET3(PACKET3_PFP_SYNC_ME, 0));
  amdgpu_ring_write(ring, 0x0);
 }
}
