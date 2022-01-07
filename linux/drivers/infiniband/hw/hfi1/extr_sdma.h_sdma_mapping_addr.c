
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_desc {int* qw; } ;
typedef int dma_addr_t ;


 int SDMA_DESC0_PHY_ADDR_SHIFT ;
 int SDMA_DESC0_PHY_ADDR_SMASK ;

__attribute__((used)) static inline dma_addr_t sdma_mapping_addr(struct sdma_desc *d)
{
 return (d->qw[0] & SDMA_DESC0_PHY_ADDR_SMASK)
  >> SDMA_DESC0_PHY_ADDR_SHIFT;
}
