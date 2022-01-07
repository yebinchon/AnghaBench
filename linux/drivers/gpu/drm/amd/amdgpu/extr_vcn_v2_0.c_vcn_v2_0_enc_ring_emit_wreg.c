
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_ring {int dummy; } ;


 int VCN_ENC_CMD_REG_WRITE ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;

void vcn_v2_0_enc_ring_emit_wreg(struct amdgpu_ring *ring, uint32_t reg, uint32_t val)
{
 amdgpu_ring_write(ring, VCN_ENC_CMD_REG_WRITE);
 amdgpu_ring_write(ring, reg << 2);
 amdgpu_ring_write(ring, val);
}
