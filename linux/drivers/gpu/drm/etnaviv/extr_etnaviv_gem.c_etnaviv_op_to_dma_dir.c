
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int ETNA_PREP_READ ;
 int ETNA_PREP_WRITE ;

__attribute__((used)) static inline enum dma_data_direction etnaviv_op_to_dma_dir(u32 op)
{
 if (op & ETNA_PREP_READ)
  return DMA_FROM_DEVICE;
 else if (op & ETNA_PREP_WRITE)
  return DMA_TO_DEVICE;
 else
  return DMA_BIDIRECTIONAL;
}
