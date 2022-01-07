
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iop_adma_desc_slot {struct iop3xx_desc_dma* hw_desc; } ;
struct iop3xx_desc_dma {int src_addr; } ;
typedef int dma_addr_t ;



__attribute__((used)) static inline void iop_desc_set_memcpy_src_addr(struct iop_adma_desc_slot *desc,
     dma_addr_t addr)
{
 struct iop3xx_desc_dma *hw_desc = desc->hw_desc;
 hw_desc->src_addr = addr;
}
