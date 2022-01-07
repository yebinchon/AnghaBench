
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef unsigned int u32 ;
struct amdgpu_ring {int wptr; } ;
struct amdgpu_job {int dummy; } ;
struct amdgpu_ib {int gpu_addr; int length_dw; } ;


 unsigned int AMDGPU_JOB_GET_VMID (struct amdgpu_job*) ;
 int SDMA_OPCODE_INDIRECT_BUFFER ;
 int SDMA_PACKET (int ,int ,unsigned int) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int cik_sdma_ring_insert_nop (struct amdgpu_ring*,int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void cik_sdma_ring_emit_ib(struct amdgpu_ring *ring,
      struct amdgpu_job *job,
      struct amdgpu_ib *ib,
      uint32_t flags)
{
 unsigned vmid = AMDGPU_JOB_GET_VMID(job);
 u32 extra_bits = vmid & 0xf;


 cik_sdma_ring_insert_nop(ring, (12 - (lower_32_bits(ring->wptr) & 7)) % 8);

 amdgpu_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_INDIRECT_BUFFER, 0, extra_bits));
 amdgpu_ring_write(ring, ib->gpu_addr & 0xffffffe0);
 amdgpu_ring_write(ring, upper_32_bits(ib->gpu_addr) & 0xffffffff);
 amdgpu_ring_write(ring, ib->length_dw);

}
