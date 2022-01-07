
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct amdgpu_ib {int* ptr; int length_dw; } ;


 int SDMA_OP_WRITE ;
 int SDMA_PKT_HEADER_OP (int ) ;
 int SDMA_PKT_HEADER_SUB_OP (int ) ;
 int SDMA_SUBOP_WRITE_LINEAR ;
 void* lower_32_bits (int ) ;
 void* upper_32_bits (int ) ;

__attribute__((used)) static void sdma_v4_0_vm_write_pte(struct amdgpu_ib *ib, uint64_t pe,
       uint64_t value, unsigned count,
       uint32_t incr)
{
 unsigned ndw = count * 2;

 ib->ptr[ib->length_dw++] = SDMA_PKT_HEADER_OP(SDMA_OP_WRITE) |
  SDMA_PKT_HEADER_SUB_OP(SDMA_SUBOP_WRITE_LINEAR);
 ib->ptr[ib->length_dw++] = lower_32_bits(pe);
 ib->ptr[ib->length_dw++] = upper_32_bits(pe);
 ib->ptr[ib->length_dw++] = ndw - 1;
 for (; ndw > 0; ndw -= 2) {
  ib->ptr[ib->length_dw++] = lower_32_bits(value);
  ib->ptr[ib->length_dw++] = upper_32_bits(value);
  value += incr;
 }
}
