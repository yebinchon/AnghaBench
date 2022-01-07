
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int dummy; } ;


 int gfx_v10_0_wait_reg_mem (struct amdgpu_ring*,int ,int ,int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static void gfx_v10_0_ring_emit_reg_wait(struct amdgpu_ring *ring, uint32_t reg,
     uint32_t val, uint32_t mask)
{
 gfx_v10_0_wait_reg_mem(ring, 0, 0, 0, reg, 0, val, mask, 0x20);
}
