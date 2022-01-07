
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct amdgpu_ring {int dummy; } ;


 int PACKET0 (int ,int ) ;
 int amdgpu_gmc_emit_flush_gpu_tlb (struct amdgpu_ring*,unsigned int,int ) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int mmUVD_GPCOM_VCPU_CMD ;
 int mmUVD_GPCOM_VCPU_DATA0 ;
 int mmUVD_GPCOM_VCPU_DATA1 ;
 int mmUVD_GP_SCRATCH8 ;
 int mmVM_INVALIDATE_REQUEST ;

__attribute__((used)) static void uvd_v6_0_ring_emit_vm_flush(struct amdgpu_ring *ring,
     unsigned vmid, uint64_t pd_addr)
{
 amdgpu_gmc_emit_flush_gpu_tlb(ring, vmid, pd_addr);

 amdgpu_ring_write(ring, PACKET0(mmUVD_GPCOM_VCPU_DATA0, 0));
 amdgpu_ring_write(ring, mmVM_INVALIDATE_REQUEST << 2);
 amdgpu_ring_write(ring, PACKET0(mmUVD_GPCOM_VCPU_DATA1, 0));
 amdgpu_ring_write(ring, 0);
 amdgpu_ring_write(ring, PACKET0(mmUVD_GP_SCRATCH8, 0));
 amdgpu_ring_write(ring, 1 << vmid);
 amdgpu_ring_write(ring, PACKET0(mmUVD_GPCOM_VCPU_CMD, 0));
 amdgpu_ring_write(ring, 0xC);
}
