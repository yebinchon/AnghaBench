
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* eba1; void* eba0; } ;
union chan_param_mem {TYPE_1__ pp; } ;
typedef void* dma_addr_t ;



__attribute__((used)) static void ipu_ch_param_set_buffer(union chan_param_mem *params,
        dma_addr_t buf0, dma_addr_t buf1)
{
 params->pp.eba0 = buf0;
 params->pp.eba1 = buf1;
}
