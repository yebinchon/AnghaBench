
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_BIDIRECTIONAL ;


 int DMA_FROM_DEVICE ;

 int DMA_NONE ;
 int DMA_TO_DEVICE ;

__attribute__((used)) static enum dma_data_direction
pl330_dma_slave_map_dir(enum dma_transfer_direction dir)
{
 switch (dir) {
 case 128:
  return DMA_FROM_DEVICE;
 case 129:
  return DMA_TO_DEVICE;
 case 130:
  return DMA_BIDIRECTIONAL;
 default:
  return DMA_NONE;
 }
}
