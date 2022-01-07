
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ MIC_DMA_DESC_RX_SIZE ;

__attribute__((used)) static u32 mic_dma_ring_count(u32 head, u32 tail)
{
 u32 count;

 if (head >= tail)
  count = (tail - 0) + (MIC_DMA_DESC_RX_SIZE - head);
 else
  count = tail - head;
 return count - 1;
}
