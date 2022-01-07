
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static bool stm32_dma_is_burst_possible(u32 buf_len, u32 threshold)
{





 return ((buf_len % ((threshold + 1) * 4)) == 0);
}
