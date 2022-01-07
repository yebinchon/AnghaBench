
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct amdgpu_ib {int* ptr; int length_dw; } ;


 int DMA_PACKET (int ,int,int ,int ,int ) ;
 int DMA_PACKET_COPY ;
 void* lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void si_dma_emit_copy_buffer(struct amdgpu_ib *ib,
           uint64_t src_offset,
           uint64_t dst_offset,
           uint32_t byte_count)
{
 ib->ptr[ib->length_dw++] = DMA_PACKET(DMA_PACKET_COPY,
           1, 0, 0, byte_count);
 ib->ptr[ib->length_dw++] = lower_32_bits(dst_offset);
 ib->ptr[ib->length_dw++] = lower_32_bits(src_offset);
 ib->ptr[ib->length_dw++] = upper_32_bits(dst_offset) & 0xff;
 ib->ptr[ib->length_dw++] = upper_32_bits(src_offset) & 0xff;
}
