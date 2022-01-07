
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int wptr; } ;
struct amdgpu_job {int dummy; } ;
struct amdgpu_ib {int length_dw; int gpu_addr; } ;


 unsigned int AMDGPU_JOB_GET_VMID (struct amdgpu_job*) ;
 int SDMA_OP_INDIRECT ;
 int SDMA_PKT_HEADER_OP (int ) ;
 int SDMA_PKT_INDIRECT_HEADER_VMID (unsigned int) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int lower_32_bits (int ) ;
 int sdma_v3_0_ring_insert_nop (struct amdgpu_ring*,int) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void sdma_v3_0_ring_emit_ib(struct amdgpu_ring *ring,
       struct amdgpu_job *job,
       struct amdgpu_ib *ib,
       uint32_t flags)
{
 unsigned vmid = AMDGPU_JOB_GET_VMID(job);


 sdma_v3_0_ring_insert_nop(ring, (10 - (lower_32_bits(ring->wptr) & 7)) % 8);

 amdgpu_ring_write(ring, SDMA_PKT_HEADER_OP(SDMA_OP_INDIRECT) |
     SDMA_PKT_INDIRECT_HEADER_VMID(vmid & 0xf));

 amdgpu_ring_write(ring, lower_32_bits(ib->gpu_addr) & 0xffffffe0);
 amdgpu_ring_write(ring, upper_32_bits(ib->gpu_addr));
 amdgpu_ring_write(ring, ib->length_dw);
 amdgpu_ring_write(ring, 0);
 amdgpu_ring_write(ring, 0);

}
