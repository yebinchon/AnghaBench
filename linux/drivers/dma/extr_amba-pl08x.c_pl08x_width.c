
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;





 int PL080_WIDTH_16BIT ;
 int PL080_WIDTH_32BIT ;
 int PL080_WIDTH_8BIT ;

__attribute__((used)) static u32 pl08x_width(enum dma_slave_buswidth width)
{
 switch (width) {
 case 130:
  return PL080_WIDTH_8BIT;
 case 129:
  return PL080_WIDTH_16BIT;
 case 128:
  return PL080_WIDTH_32BIT;
 default:
  return ~0;
 }
}
