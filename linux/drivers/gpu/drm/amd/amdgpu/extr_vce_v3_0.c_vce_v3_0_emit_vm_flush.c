
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct amdgpu_ring {int dummy; } ;


 unsigned int VCE_CMD_END ;
 unsigned int VCE_CMD_FLUSH_TLB ;
 unsigned int VCE_CMD_UPDATE_PTB ;
 int amdgpu_ring_write (struct amdgpu_ring*,unsigned int) ;

__attribute__((used)) static void vce_v3_0_emit_vm_flush(struct amdgpu_ring *ring,
       unsigned int vmid, uint64_t pd_addr)
{
 amdgpu_ring_write(ring, VCE_CMD_UPDATE_PTB);
 amdgpu_ring_write(ring, vmid);
 amdgpu_ring_write(ring, pd_addr >> 12);

 amdgpu_ring_write(ring, VCE_CMD_FLUSH_TLB);
 amdgpu_ring_write(ring, vmid);
 amdgpu_ring_write(ring, VCE_CMD_END);
}
