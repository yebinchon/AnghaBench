
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct amdgpu_ring {int dummy; } ;


 int amdgpu_gmc_emit_flush_gpu_tlb (struct amdgpu_ring*,unsigned int,int ) ;

__attribute__((used)) static void sdma_v5_0_ring_emit_vm_flush(struct amdgpu_ring *ring,
      unsigned vmid, uint64_t pd_addr)
{
 amdgpu_gmc_emit_flush_gpu_tlb(ring, vmid, pd_addr);
}
