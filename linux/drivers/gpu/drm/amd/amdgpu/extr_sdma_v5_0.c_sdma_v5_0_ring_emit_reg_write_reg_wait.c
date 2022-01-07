
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int dummy; } ;


 int amdgpu_ring_emit_reg_wait (struct amdgpu_ring*,int ,int ,int ) ;
 int amdgpu_ring_emit_wreg (struct amdgpu_ring*,int ,int ) ;

__attribute__((used)) static void sdma_v5_0_ring_emit_reg_write_reg_wait(struct amdgpu_ring *ring,
         uint32_t reg0, uint32_t reg1,
         uint32_t ref, uint32_t mask)
{
 amdgpu_ring_emit_wreg(ring, reg0, ref);

 amdgpu_ring_emit_reg_wait(ring, reg0, 0, 0);
 amdgpu_ring_emit_reg_wait(ring, reg1, mask, mask);
}
