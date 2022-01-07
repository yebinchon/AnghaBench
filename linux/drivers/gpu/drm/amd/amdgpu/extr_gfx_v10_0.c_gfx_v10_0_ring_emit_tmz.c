
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ring {int dummy; } ;


 int FRAME_CMD (int) ;
 int PACKET3 (int ,int ) ;
 int PACKET3_FRAME_CONTROL ;
 int amdgpu_ring_write (struct amdgpu_ring*,int ) ;

__attribute__((used)) static void gfx_v10_0_ring_emit_tmz(struct amdgpu_ring *ring, bool start)
{
 amdgpu_ring_write(ring, PACKET3(PACKET3_FRAME_CONTROL, 0));
 amdgpu_ring_write(ring, FRAME_CMD(start ? 0 : 1));
}
