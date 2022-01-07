
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct amdgpu_ring {struct amdgpu_device* adev; } ;
struct amdgpu_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;


 unsigned int AMDGPU_FENCE_FLAG_64BIT ;
 unsigned int AMDGPU_FENCE_FLAG_INT ;
 int BUG_ON (int) ;
 int CACHE_FLUSH_AND_INV_TS_EVENT ;
 int PACKET3 (int ,int) ;
 int PACKET3_RELEASE_MEM ;
 int PACKET3_RELEASE_MEM_CACHE_POLICY (int) ;
 int PACKET3_RELEASE_MEM_DATA_SEL (int) ;
 int PACKET3_RELEASE_MEM_EVENT_INDEX (int) ;
 int PACKET3_RELEASE_MEM_EVENT_TYPE (int ) ;
 int PACKET3_RELEASE_MEM_GCR_GL2_WB ;
 int PACKET3_RELEASE_MEM_GCR_GLM_INV ;
 int PACKET3_RELEASE_MEM_GCR_GLM_WB ;
 int PACKET3_RELEASE_MEM_GCR_SEQ ;
 int PACKET3_RELEASE_MEM_INT_SEL (int) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int lower_32_bits (int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void gfx_v10_0_ring_emit_fence(struct amdgpu_ring *ring, u64 addr,
         u64 seq, unsigned flags)
{
 struct amdgpu_device *adev = ring->adev;
 bool write64bit = flags & AMDGPU_FENCE_FLAG_64BIT;
 bool int_sel = flags & AMDGPU_FENCE_FLAG_INT;


 if (adev->pdev->device == 0x50)
  int_sel = 0;


 amdgpu_ring_write(ring, PACKET3(PACKET3_RELEASE_MEM, 6));
 amdgpu_ring_write(ring, (PACKET3_RELEASE_MEM_GCR_SEQ |
     PACKET3_RELEASE_MEM_GCR_GL2_WB |
     PACKET3_RELEASE_MEM_GCR_GLM_INV |
     PACKET3_RELEASE_MEM_GCR_GLM_WB |
     PACKET3_RELEASE_MEM_CACHE_POLICY(3) |
     PACKET3_RELEASE_MEM_EVENT_TYPE(CACHE_FLUSH_AND_INV_TS_EVENT) |
     PACKET3_RELEASE_MEM_EVENT_INDEX(5)));
 amdgpu_ring_write(ring, (PACKET3_RELEASE_MEM_DATA_SEL(write64bit ? 2 : 1) |
     PACKET3_RELEASE_MEM_INT_SEL(int_sel ? 2 : 0)));





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
