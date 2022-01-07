
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef unsigned int u32 ;
struct amdgpu_ring {int dummy; } ;
struct amdgpu_job {int dummy; } ;
struct amdgpu_ib {int flags; unsigned int length_dw; int gpu_addr; } ;


 int AMDGPU_HAVE_CTX_SWITCH ;
 int AMDGPU_IB_FLAG_CE ;
 unsigned int AMDGPU_JOB_GET_VMID (struct amdgpu_job*) ;
 unsigned int PACKET3 (int ,int) ;
 int PACKET3_INDIRECT_BUFFER ;
 int PACKET3_INDIRECT_BUFFER_CONST ;
 int PACKET3_SWITCH_BUFFER ;
 int amdgpu_ring_write (struct amdgpu_ring*,unsigned int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void gfx_v6_0_ring_emit_ib(struct amdgpu_ring *ring,
      struct amdgpu_job *job,
      struct amdgpu_ib *ib,
      uint32_t flags)
{
 unsigned vmid = AMDGPU_JOB_GET_VMID(job);
 u32 header, control = 0;


 if (flags & AMDGPU_HAVE_CTX_SWITCH) {
  amdgpu_ring_write(ring, PACKET3(PACKET3_SWITCH_BUFFER, 0));
  amdgpu_ring_write(ring, 0);
 }

 if (ib->flags & AMDGPU_IB_FLAG_CE)
  header = PACKET3(PACKET3_INDIRECT_BUFFER_CONST, 2);
 else
  header = PACKET3(PACKET3_INDIRECT_BUFFER, 2);

 control |= ib->length_dw | (vmid << 24);

 amdgpu_ring_write(ring, header);
 amdgpu_ring_write(ring,



     (ib->gpu_addr & 0xFFFFFFFC));
 amdgpu_ring_write(ring, upper_32_bits(ib->gpu_addr) & 0xFFFF);
 amdgpu_ring_write(ring, control);
}
