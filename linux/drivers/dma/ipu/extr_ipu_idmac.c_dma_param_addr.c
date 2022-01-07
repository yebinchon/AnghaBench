
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t dma_param_addr(uint32_t dma_ch)
{

 return 0x10000 | (dma_ch << 4);
}
