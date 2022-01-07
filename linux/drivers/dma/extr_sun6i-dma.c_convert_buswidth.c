
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s8 ;
typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;


 int ilog2 (int) ;

__attribute__((used)) static inline s8 convert_buswidth(enum dma_slave_buswidth addr_width)
{
 return ilog2(addr_width);
}
