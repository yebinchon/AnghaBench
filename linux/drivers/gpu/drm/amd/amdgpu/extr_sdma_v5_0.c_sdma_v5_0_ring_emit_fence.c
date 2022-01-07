
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
 int SDMA_OP_FENCE ;
 int SDMA_OP_TRAP ;
 int SDMA_PKT_FENCE_HEADER_MTYPE (int) ;
 int SDMA_PKT_HEADER_OP (int ) ;
 int SDMA_PKT_TRAP_INT_CONTEXT_INT_CONTEXT (int ) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 int lower_32_bits (int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void sdma_v5_0_ring_emit_fence(struct amdgpu_ring *ring, u64 addr, u64 seq,
          unsigned flags)
{
 struct amdgpu_device *adev = ring->adev;
 bool write64bit = flags & AMDGPU_FENCE_FLAG_64BIT;

 amdgpu_ring_write(ring, SDMA_PKT_HEADER_OP(SDMA_OP_FENCE) |
     SDMA_PKT_FENCE_HEADER_MTYPE(0x3));

 BUG_ON(addr & 0x3);
 amdgpu_ring_write(ring, lower_32_bits(addr));
 amdgpu_ring_write(ring, upper_32_bits(addr));
 amdgpu_ring_write(ring, lower_32_bits(seq));


 if (write64bit) {
  addr += 4;
  amdgpu_ring_write(ring, SDMA_PKT_HEADER_OP(SDMA_OP_FENCE) |
      SDMA_PKT_FENCE_HEADER_MTYPE(0x3));

  BUG_ON(addr & 0x3);
  amdgpu_ring_write(ring, lower_32_bits(addr));
  amdgpu_ring_write(ring, upper_32_bits(addr));
  amdgpu_ring_write(ring, upper_32_bits(seq));
 }


 if ((flags & AMDGPU_FENCE_FLAG_INT) && adev->pdev->device != 0x50) {

  amdgpu_ring_write(ring, SDMA_PKT_HEADER_OP(SDMA_OP_TRAP));
  amdgpu_ring_write(ring, SDMA_PKT_TRAP_INT_CONTEXT_INT_CONTEXT(0));
 }
}
