
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int dummy; } ;


 int AMDGPU_HAVE_CTX_SWITCH ;
 int PACKET3 (int ,int) ;
 int PACKET3_CONTEXT_CONTROL ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int gfx_v6_0_ring_emit_vgt_flush (struct amdgpu_ring*) ;

__attribute__((used)) static void gfx_v6_ring_emit_cntxcntl(struct amdgpu_ring *ring, uint32_t flags)
{
 if (flags & AMDGPU_HAVE_CTX_SWITCH)
  gfx_v6_0_ring_emit_vgt_flush(ring);
 amdgpu_ring_write(ring, PACKET3(PACKET3_CONTEXT_CONTROL, 1));
 amdgpu_ring_write(ring, 0x80000000);
 amdgpu_ring_write(ring, 0);
}
