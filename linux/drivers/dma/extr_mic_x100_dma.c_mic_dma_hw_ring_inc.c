
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MIC_DMA_DESC_RX_SIZE ;

__attribute__((used)) static inline u32 mic_dma_hw_ring_inc(u32 val)
{
 return (val + 1) % MIC_DMA_DESC_RX_SIZE;
}
