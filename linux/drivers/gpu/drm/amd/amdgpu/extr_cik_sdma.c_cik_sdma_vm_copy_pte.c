
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct amdgpu_ib {unsigned int* ptr; int length_dw; } ;


 int SDMA_OPCODE_COPY ;
 unsigned int SDMA_PACKET (int ,int ,int ) ;
 int SDMA_WRITE_SUB_OPCODE_LINEAR ;
 void* lower_32_bits (int ) ;
 void* upper_32_bits (int ) ;

__attribute__((used)) static void cik_sdma_vm_copy_pte(struct amdgpu_ib *ib,
     uint64_t pe, uint64_t src,
     unsigned count)
{
 unsigned bytes = count * 8;

 ib->ptr[ib->length_dw++] = SDMA_PACKET(SDMA_OPCODE_COPY,
  SDMA_WRITE_SUB_OPCODE_LINEAR, 0);
 ib->ptr[ib->length_dw++] = bytes;
 ib->ptr[ib->length_dw++] = 0;
 ib->ptr[ib->length_dw++] = lower_32_bits(src);
 ib->ptr[ib->length_dw++] = upper_32_bits(src);
 ib->ptr[ib->length_dw++] = lower_32_bits(pe);
 ib->ptr[ib->length_dw++] = upper_32_bits(pe);
}
