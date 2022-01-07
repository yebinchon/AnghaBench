
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ring {int dummy; } ;


 int EVENT_INDEX (int) ;
 int EVENT_TYPE (int ) ;
 int PACKET3 (int ,int ) ;
 int PACKET3_EVENT_WRITE ;
 int VGT_FLUSH ;
 int VS_PARTIAL_FLUSH ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;

__attribute__((used)) static void gfx_v7_0_ring_emit_vgt_flush(struct amdgpu_ring *ring)
{
 amdgpu_ring_write(ring, PACKET3(PACKET3_EVENT_WRITE, 0));
 amdgpu_ring_write(ring, EVENT_TYPE(VS_PARTIAL_FLUSH) |
  EVENT_INDEX(4));

 amdgpu_ring_write(ring, PACKET3(PACKET3_EVENT_WRITE, 0));
 amdgpu_ring_write(ring, EVENT_TYPE(VGT_FLUSH) |
  EVENT_INDEX(0));
}
