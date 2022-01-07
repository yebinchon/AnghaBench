
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct amdgpu_ib {int* ptr; int length_dw; } ;


 int DMA_PACKET (int ,int,int ,int ,unsigned int) ;
 int DMA_PACKET_COPY ;
 void* lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static void si_dma_vm_copy_pte(struct amdgpu_ib *ib,
          uint64_t pe, uint64_t src,
          unsigned count)
{
 unsigned bytes = count * 8;

 ib->ptr[ib->length_dw++] = DMA_PACKET(DMA_PACKET_COPY,
           1, 0, 0, bytes);
 ib->ptr[ib->length_dw++] = lower_32_bits(pe);
 ib->ptr[ib->length_dw++] = lower_32_bits(src);
 ib->ptr[ib->length_dw++] = upper_32_bits(pe) & 0xff;
 ib->ptr[ib->length_dw++] = upper_32_bits(src) & 0xff;
}
