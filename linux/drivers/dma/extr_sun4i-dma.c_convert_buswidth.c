
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;


 int DMA_SLAVE_BUSWIDTH_4_BYTES ;
 int EINVAL ;

__attribute__((used)) static int convert_buswidth(enum dma_slave_buswidth addr_width)
{
 if (addr_width > DMA_SLAVE_BUSWIDTH_4_BYTES)
  return -EINVAL;


 return (addr_width >> 1);
}
