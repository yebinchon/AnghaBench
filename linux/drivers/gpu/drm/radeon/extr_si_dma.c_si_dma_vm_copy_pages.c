
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
struct radeon_ib {int* ptr; int length_dw; } ;
struct radeon_device {int dummy; } ;


 int DMA_PACKET (int ,int,int ,int ,unsigned int) ;
 int DMA_PACKET_COPY ;
 void* lower_32_bits (unsigned int) ;
 int upper_32_bits (unsigned int) ;

void si_dma_vm_copy_pages(struct radeon_device *rdev,
     struct radeon_ib *ib,
     uint64_t pe, uint64_t src,
     unsigned count)
{
 while (count) {
  unsigned bytes = count * 8;
  if (bytes > 0xFFFF8)
   bytes = 0xFFFF8;

  ib->ptr[ib->length_dw++] = DMA_PACKET(DMA_PACKET_COPY,
            1, 0, 0, bytes);
  ib->ptr[ib->length_dw++] = lower_32_bits(pe);
  ib->ptr[ib->length_dw++] = lower_32_bits(src);
  ib->ptr[ib->length_dw++] = upper_32_bits(pe) & 0xff;
  ib->ptr[ib->length_dw++] = upper_32_bits(src) & 0xff;

  pe += bytes;
  src += bytes;
  count -= bytes / 8;
 }
}
