
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct amdgpu_ring {int dummy; } ;


 unsigned int AMDGPU_FENCE_FLAG_64BIT ;
 unsigned int AMDGPU_FENCE_FLAG_INT ;
 unsigned int AMDGPU_FENCE_FLAG_TC_WB_ONLY ;
 int BUG_ON (int) ;
 int CACHE_FLUSH_AND_INV_TS_EVENT ;
 int DATA_SEL (int) ;
 int EOP_TCL1_ACTION_EN ;
 int EOP_TC_ACTION_EN ;
 int EOP_TC_MD_ACTION_EN ;
 int EOP_TC_NC_ACTION_EN ;
 int EOP_TC_WB_ACTION_EN ;
 int EVENT_INDEX (int) ;
 int EVENT_TYPE (int ) ;
 int INT_SEL (int) ;
 int PACKET3 (int ,int) ;
 int PACKET3_RELEASE_MEM ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int lower_32_bits (int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void gfx_v9_0_ring_emit_fence(struct amdgpu_ring *ring, u64 addr,
         u64 seq, unsigned flags)
{
 bool write64bit = flags & AMDGPU_FENCE_FLAG_64BIT;
 bool int_sel = flags & AMDGPU_FENCE_FLAG_INT;
 bool writeback = flags & AMDGPU_FENCE_FLAG_TC_WB_ONLY;


 amdgpu_ring_write(ring, PACKET3(PACKET3_RELEASE_MEM, 6));
 amdgpu_ring_write(ring, ((writeback ? (EOP_TC_WB_ACTION_EN |
            EOP_TC_NC_ACTION_EN) :
           (EOP_TCL1_ACTION_EN |
            EOP_TC_ACTION_EN |
            EOP_TC_WB_ACTION_EN |
            EOP_TC_MD_ACTION_EN)) |
     EVENT_TYPE(CACHE_FLUSH_AND_INV_TS_EVENT) |
     EVENT_INDEX(5)));
 amdgpu_ring_write(ring, DATA_SEL(write64bit ? 2 : 1) | INT_SEL(int_sel ? 2 : 0));





 if (write64bit)
  BUG_ON(addr & 0x7);
 else
  BUG_ON(addr & 0x3);
 amdgpu_ring_write(ring, lower_32_bits(addr));
 amdgpu_ring_write(ring, upper_32_bits(addr));
 amdgpu_ring_write(ring, lower_32_bits(seq));
 amdgpu_ring_write(ring, upper_32_bits(seq));
 amdgpu_ring_write(ring, 0);
}
