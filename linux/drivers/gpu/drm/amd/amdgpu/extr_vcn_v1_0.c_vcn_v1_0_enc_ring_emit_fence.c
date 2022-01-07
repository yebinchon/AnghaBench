
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct amdgpu_ring {int dummy; } ;


 unsigned int AMDGPU_FENCE_FLAG_64BIT ;
 int VCN_ENC_CMD_FENCE ;
 int VCN_ENC_CMD_TRAP ;
 int WARN_ON (unsigned int) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void vcn_v1_0_enc_ring_emit_fence(struct amdgpu_ring *ring, u64 addr,
   u64 seq, unsigned flags)
{
 WARN_ON(flags & AMDGPU_FENCE_FLAG_64BIT);

 amdgpu_ring_write(ring, VCN_ENC_CMD_FENCE);
 amdgpu_ring_write(ring, addr);
 amdgpu_ring_write(ring, upper_32_bits(addr));
 amdgpu_ring_write(ring, seq);
 amdgpu_ring_write(ring, VCN_ENC_CMD_TRAP);
}
