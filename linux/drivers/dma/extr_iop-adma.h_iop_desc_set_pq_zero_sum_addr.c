
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iop_adma_desc_slot {int dummy; } ;
typedef int dma_addr_t ;


 int BUG () ;

__attribute__((used)) static inline void
iop_desc_set_pq_zero_sum_addr(struct iop_adma_desc_slot *desc, int pq_idx,
         dma_addr_t *src)
{
 BUG();
}
