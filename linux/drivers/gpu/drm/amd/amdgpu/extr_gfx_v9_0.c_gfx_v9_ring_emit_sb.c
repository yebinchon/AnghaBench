
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ring {int dummy; } ;


 int PACKET3 (int ,int ) ;
 int PACKET3_SWITCH_BUFFER ;
 int amdgpu_ring_write (struct amdgpu_ring*,int ) ;

__attribute__((used)) static void gfx_v9_ring_emit_sb(struct amdgpu_ring *ring)
{
 amdgpu_ring_write(ring, PACKET3(PACKET3_SWITCH_BUFFER, 0));
 amdgpu_ring_write(ring, 0);
}
