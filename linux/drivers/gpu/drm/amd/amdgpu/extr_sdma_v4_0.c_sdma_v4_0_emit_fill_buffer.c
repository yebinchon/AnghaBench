
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef void* uint32_t ;
struct amdgpu_ib {int length_dw; void** ptr; } ;


 int SDMA_OP_CONST_FILL ;
 void* SDMA_PKT_HEADER_OP (int ) ;
 void* lower_32_bits (int ) ;
 void* upper_32_bits (int ) ;

__attribute__((used)) static void sdma_v4_0_emit_fill_buffer(struct amdgpu_ib *ib,
           uint32_t src_data,
           uint64_t dst_offset,
           uint32_t byte_count)
{
 ib->ptr[ib->length_dw++] = SDMA_PKT_HEADER_OP(SDMA_OP_CONST_FILL);
 ib->ptr[ib->length_dw++] = lower_32_bits(dst_offset);
 ib->ptr[ib->length_dw++] = upper_32_bits(dst_offset);
 ib->ptr[ib->length_dw++] = src_data;
 ib->ptr[ib->length_dw++] = byte_count - 1;
}
