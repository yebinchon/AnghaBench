
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct amdgpu_ring {TYPE_1__* funcs; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ AMDGPU_RING_TYPE_GFX ;
 int PACKET3 (int ,int) ;
 int PACKET3_WRITE_DATA ;
 int WRITE_DATA_DST_SEL (int ) ;
 int WRITE_DATA_ENGINE_SEL (int) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;

__attribute__((used)) static void gfx_v7_0_ring_emit_wreg(struct amdgpu_ring *ring,
        uint32_t reg, uint32_t val)
{
 int usepfp = (ring->funcs->type == AMDGPU_RING_TYPE_GFX);

 amdgpu_ring_write(ring, PACKET3(PACKET3_WRITE_DATA, 3));
 amdgpu_ring_write(ring, (WRITE_DATA_ENGINE_SEL(usepfp) |
     WRITE_DATA_DST_SEL(0)));
 amdgpu_ring_write(ring, reg);
 amdgpu_ring_write(ring, 0);
 amdgpu_ring_write(ring, val);
}
