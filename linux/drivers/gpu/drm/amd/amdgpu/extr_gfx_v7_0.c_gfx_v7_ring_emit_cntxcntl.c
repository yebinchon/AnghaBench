
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
 int gfx_v7_0_ring_emit_vgt_flush (struct amdgpu_ring*) ;

__attribute__((used)) static void gfx_v7_ring_emit_cntxcntl(struct amdgpu_ring *ring, uint32_t flags)
{
 uint32_t dw2 = 0;

 dw2 |= 0x80000000;
 if (flags & AMDGPU_HAVE_CTX_SWITCH) {
  gfx_v7_0_ring_emit_vgt_flush(ring);

  dw2 |= 0x8001;

  dw2 |= 0x01000000;

  dw2 |= 0x10002;
 }

 amdgpu_ring_write(ring, PACKET3(PACKET3_CONTEXT_CONTROL, 1));
 amdgpu_ring_write(ring, dw2);
 amdgpu_ring_write(ring, 0);
}
