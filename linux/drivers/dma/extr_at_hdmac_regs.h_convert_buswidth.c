
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;





__attribute__((used)) static inline u8 convert_buswidth(enum dma_slave_buswidth addr_width)
{
 switch (addr_width) {
 case 129:
  return 1;
 case 128:
  return 2;
 default:

  return 0;
 }
}
