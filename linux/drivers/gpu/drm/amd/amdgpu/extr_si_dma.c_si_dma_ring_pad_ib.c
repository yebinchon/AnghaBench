
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ring {int dummy; } ;
struct amdgpu_ib {int length_dw; int * ptr; } ;


 int DMA_PACKET (int ,int ,int ,int ,int ) ;
 int DMA_PACKET_NOP ;

__attribute__((used)) static void si_dma_ring_pad_ib(struct amdgpu_ring *ring, struct amdgpu_ib *ib)
{
 while (ib->length_dw & 0x7)
  ib->ptr[ib->length_dw++] = DMA_PACKET(DMA_PACKET_NOP, 0, 0, 0, 0);
}
