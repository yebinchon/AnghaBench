
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int dummy; } ;
struct amdgpu_job {int dummy; } ;
struct amdgpu_ib {unsigned int length_dw; int gpu_addr; } ;


 unsigned int AMDGPU_JOB_GET_VMID (struct amdgpu_job*) ;
 unsigned int VCN_ENC_CMD_IB ;
 int amdgpu_ring_write (struct amdgpu_ring*,unsigned int) ;
 unsigned int lower_32_bits (int ) ;
 unsigned int upper_32_bits (int ) ;

__attribute__((used)) static void vcn_v1_0_enc_ring_emit_ib(struct amdgpu_ring *ring,
     struct amdgpu_job *job,
     struct amdgpu_ib *ib,
     uint32_t flags)
{
 unsigned vmid = AMDGPU_JOB_GET_VMID(job);

 amdgpu_ring_write(ring, VCN_ENC_CMD_IB);
 amdgpu_ring_write(ring, vmid);
 amdgpu_ring_write(ring, lower_32_bits(ib->gpu_addr));
 amdgpu_ring_write(ring, upper_32_bits(ib->gpu_addr));
 amdgpu_ring_write(ring, ib->length_dw);
}
