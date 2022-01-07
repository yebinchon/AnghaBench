
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iop3xx_desc_aau {TYPE_1__* src_edc; void** src; } ;
typedef void* dma_addr_t ;
struct TYPE_2__ {void* src_addr; } ;


 size_t __desc_idx (int) ;

__attribute__((used)) static inline void iop3xx_aau_desc_set_src_addr(struct iop3xx_desc_aau *hw_desc,
     int src_idx, dma_addr_t addr)
{
 if (src_idx < 4)
  hw_desc->src[src_idx] = addr;
 else
  hw_desc->src_edc[__desc_idx(src_idx)].src_addr = addr;
}
