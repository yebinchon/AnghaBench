
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int dummy; } ;


 int VCN_ENC_CMD_REG_WAIT ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;

__attribute__((used)) static void vcn_v1_0_enc_ring_emit_reg_wait(struct amdgpu_ring *ring,
         uint32_t reg, uint32_t val,
         uint32_t mask)
{
 amdgpu_ring_write(ring, VCN_ENC_CMD_REG_WAIT);
 amdgpu_ring_write(ring, reg << 2);
 amdgpu_ring_write(ring, mask);
 amdgpu_ring_write(ring, val);
}
