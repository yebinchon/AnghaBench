
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct amdgpu_ring {int dummy; } ;


 unsigned int AMDGPU_FENCE_FLAG_64BIT ;
 unsigned int AMDGPU_FENCE_FLAG_INT ;
 int BUG_ON (unsigned int) ;
 int PACKET3 (int ,int) ;
 int PACKET3_WRITE_DATA ;
 int WRITE_DATA_DST_SEL (int) ;
 int WRITE_DATA_ENGINE_SEL (int ) ;
 int WR_CONFIRM ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int lower_32_bits (int ) ;
 int mmCPC_INT_STATUS ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void gfx_v8_0_ring_emit_fence_kiq(struct amdgpu_ring *ring, u64 addr,
      u64 seq, unsigned int flags)
{

 BUG_ON(flags & AMDGPU_FENCE_FLAG_64BIT);


 amdgpu_ring_write(ring, PACKET3(PACKET3_WRITE_DATA, 3));
 amdgpu_ring_write(ring, (WRITE_DATA_ENGINE_SEL(0) |
     WRITE_DATA_DST_SEL(5) | WR_CONFIRM));
 amdgpu_ring_write(ring, lower_32_bits(addr));
 amdgpu_ring_write(ring, upper_32_bits(addr));
 amdgpu_ring_write(ring, lower_32_bits(seq));

 if (flags & AMDGPU_FENCE_FLAG_INT) {

  amdgpu_ring_write(ring, PACKET3(PACKET3_WRITE_DATA, 3));
  amdgpu_ring_write(ring, (WRITE_DATA_ENGINE_SEL(0) |
      WRITE_DATA_DST_SEL(0) | WR_CONFIRM));
  amdgpu_ring_write(ring, mmCPC_INT_STATUS);
  amdgpu_ring_write(ring, 0);
  amdgpu_ring_write(ring, 0x20000000);
 }
}
