
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct amdgpu_ib {unsigned int* ptr; int length_dw; } ;


 int SDMA_OPCODE_WRITE ;
 unsigned int SDMA_PACKET (int ,int ,int ) ;
 int SDMA_WRITE_SUB_OPCODE_LINEAR ;
 void* lower_32_bits (int ) ;
 void* upper_32_bits (int ) ;

__attribute__((used)) static void cik_sdma_vm_write_pte(struct amdgpu_ib *ib, uint64_t pe,
      uint64_t value, unsigned count,
      uint32_t incr)
{
 unsigned ndw = count * 2;

 ib->ptr[ib->length_dw++] = SDMA_PACKET(SDMA_OPCODE_WRITE,
  SDMA_WRITE_SUB_OPCODE_LINEAR, 0);
 ib->ptr[ib->length_dw++] = lower_32_bits(pe);
 ib->ptr[ib->length_dw++] = upper_32_bits(pe);
 ib->ptr[ib->length_dw++] = ndw;
 for (; ndw > 0; ndw -= 2) {
  ib->ptr[ib->length_dw++] = lower_32_bits(value);
  ib->ptr[ib->length_dw++] = upper_32_bits(value);
  value += incr;
 }
}
