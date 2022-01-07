
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_ib {int length_dw; int * ptr; } ;


 int DMA_PACKET (int ,int ,int ,int ) ;
 int DMA_PACKET_NOP ;

void cayman_dma_vm_pad_ib(struct radeon_ib *ib)
{
 while (ib->length_dw & 0x7)
  ib->ptr[ib->length_dw++] = DMA_PACKET(DMA_PACKET_NOP, 0, 0, 0);
}
