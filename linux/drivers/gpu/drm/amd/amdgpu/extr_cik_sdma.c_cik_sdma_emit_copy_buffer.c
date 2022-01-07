
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef void* uint32_t ;
struct amdgpu_ib {int length_dw; void** ptr; } ;


 int SDMA_COPY_SUB_OPCODE_LINEAR ;
 int SDMA_OPCODE_COPY ;
 void* SDMA_PACKET (int ,int ,int ) ;
 void* lower_32_bits (int ) ;
 void* upper_32_bits (int ) ;

__attribute__((used)) static void cik_sdma_emit_copy_buffer(struct amdgpu_ib *ib,
          uint64_t src_offset,
          uint64_t dst_offset,
          uint32_t byte_count)
{
 ib->ptr[ib->length_dw++] = SDMA_PACKET(SDMA_OPCODE_COPY, SDMA_COPY_SUB_OPCODE_LINEAR, 0);
 ib->ptr[ib->length_dw++] = byte_count;
 ib->ptr[ib->length_dw++] = 0;
 ib->ptr[ib->length_dw++] = lower_32_bits(src_offset);
 ib->ptr[ib->length_dw++] = upper_32_bits(src_offset);
 ib->ptr[ib->length_dw++] = lower_32_bits(dst_offset);
 ib->ptr[ib->length_dw++] = upper_32_bits(dst_offset);
}
