
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct jz4780_dma_dev {TYPE_1__* soc_data; } ;
struct jz4780_dma_chan {int dummy; } ;
struct TYPE_2__ {int transfer_ord_max; } ;


 int JZ_DMA_SIZE_128_BYTE ;
 int JZ_DMA_SIZE_16_BYTE ;
 int JZ_DMA_SIZE_1_BYTE ;
 int JZ_DMA_SIZE_2_BYTE ;
 int JZ_DMA_SIZE_32_BYTE ;
 int JZ_DMA_SIZE_4_BYTE ;
 int JZ_DMA_SIZE_64_BYTE ;
 int ffs (unsigned long) ;
 struct jz4780_dma_dev* jz4780_dma_chan_parent (struct jz4780_dma_chan*) ;

__attribute__((used)) static uint32_t jz4780_dma_transfer_size(struct jz4780_dma_chan *jzchan,
 unsigned long val, uint32_t *shift)
{
 struct jz4780_dma_dev *jzdma = jz4780_dma_chan_parent(jzchan);
 int ord = ffs(val) - 1;
 if (ord == 3)
  ord = 2;
 else if (ord > jzdma->soc_data->transfer_ord_max)
  ord = jzdma->soc_data->transfer_ord_max;

 *shift = ord;

 switch (ord) {
 case 0:
  return JZ_DMA_SIZE_1_BYTE;
 case 1:
  return JZ_DMA_SIZE_2_BYTE;
 case 2:
  return JZ_DMA_SIZE_4_BYTE;
 case 4:
  return JZ_DMA_SIZE_16_BYTE;
 case 5:
  return JZ_DMA_SIZE_32_BYTE;
 case 6:
  return JZ_DMA_SIZE_64_BYTE;
 default:
  return JZ_DMA_SIZE_128_BYTE;
 }
}
