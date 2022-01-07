
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct amdgpu_ring {int dummy; } ;


 unsigned int AMDGPU_FENCE_FLAG_64BIT ;
 int SDMA_OPCODE_FENCE ;
 int SDMA_OPCODE_TRAP ;
 int SDMA_PACKET (int ,int ,int ) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int ) ;
 int lower_32_bits (int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void cik_sdma_ring_emit_fence(struct amdgpu_ring *ring, u64 addr, u64 seq,
         unsigned flags)
{
 bool write64bit = flags & AMDGPU_FENCE_FLAG_64BIT;

 amdgpu_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_FENCE, 0, 0));
 amdgpu_ring_write(ring, lower_32_bits(addr));
 amdgpu_ring_write(ring, upper_32_bits(addr));
 amdgpu_ring_write(ring, lower_32_bits(seq));


 if (write64bit) {
  addr += 4;
  amdgpu_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_FENCE, 0, 0));
  amdgpu_ring_write(ring, lower_32_bits(addr));
  amdgpu_ring_write(ring, upper_32_bits(addr));
  amdgpu_ring_write(ring, upper_32_bits(seq));
 }


 amdgpu_ring_write(ring, SDMA_PACKET(SDMA_OPCODE_TRAP, 0, 0));
}
