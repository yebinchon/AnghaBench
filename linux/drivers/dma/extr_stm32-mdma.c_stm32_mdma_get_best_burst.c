
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;


 int __ffs (int) ;
 int min (int,int) ;

__attribute__((used)) static u32 stm32_mdma_get_best_burst(u32 buf_len, u32 tlen, u32 max_burst,
         enum dma_slave_buswidth width)
{
 u32 best_burst;

 best_burst = min((u32)1 << __ffs(tlen | buf_len),
    max_burst * width) / width;

 return (best_burst > 0) ? best_burst : 1;
}
