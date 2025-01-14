
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_ring {TYPE_1__* funcs; } ;
struct TYPE_2__ {int type; } ;




 int PACKET3 (int ,int) ;
 int PACKET3_WRITE_DATA ;
 int WRITE_DATA_ENGINE_SEL (int) ;
 int WR_CONFIRM ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;

__attribute__((used)) static void gfx_v10_0_ring_emit_wreg(struct amdgpu_ring *ring, uint32_t reg,
       uint32_t val)
{
 uint32_t cmd = 0;

 switch (ring->funcs->type) {
 case 129:
  cmd = WRITE_DATA_ENGINE_SEL(1) | WR_CONFIRM;
  break;
 case 128:
  cmd = (1 << 16);
  break;
 default:
  cmd = WR_CONFIRM;
  break;
 }
 amdgpu_ring_write(ring, PACKET3(PACKET3_WRITE_DATA, 3));
 amdgpu_ring_write(ring, cmd);
 amdgpu_ring_write(ring, reg);
 amdgpu_ring_write(ring, 0);
 amdgpu_ring_write(ring, val);
}
