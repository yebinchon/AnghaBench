
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protection_domain {int flags; } ;


 int PD_DMA_OPS_MASK ;

__attribute__((used)) static bool dma_ops_domain(struct protection_domain *domain)
{
 return domain->flags & PD_DMA_OPS_MASK;
}
