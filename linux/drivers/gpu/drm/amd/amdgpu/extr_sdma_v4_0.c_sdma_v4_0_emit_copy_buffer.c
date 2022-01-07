
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct amdgpu_ib {int* ptr; int length_dw; } ;


 int SDMA_OP_COPY ;
 int SDMA_PKT_HEADER_OP (int ) ;
 int SDMA_PKT_HEADER_SUB_OP (int ) ;
 int SDMA_SUBOP_COPY_LINEAR ;
 void* lower_32_bits (int ) ;
 void* upper_32_bits (int ) ;

__attribute__((used)) static void sdma_v4_0_emit_copy_buffer(struct amdgpu_ib *ib,
           uint64_t src_offset,
           uint64_t dst_offset,
           uint32_t byte_count)
{
 ib->ptr[ib->length_dw++] = SDMA_PKT_HEADER_OP(SDMA_OP_COPY) |
  SDMA_PKT_HEADER_SUB_OP(SDMA_SUBOP_COPY_LINEAR);
 ib->ptr[ib->length_dw++] = byte_count - 1;
 ib->ptr[ib->length_dw++] = 0;
 ib->ptr[ib->length_dw++] = lower_32_bits(src_offset);
 ib->ptr[ib->length_dw++] = upper_32_bits(src_offset);
 ib->ptr[ib->length_dw++] = lower_32_bits(dst_offset);
 ib->ptr[ib->length_dw++] = upper_32_bits(dst_offset);
}
