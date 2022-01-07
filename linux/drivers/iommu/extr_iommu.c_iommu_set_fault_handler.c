
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {void* handler_token; int handler; } ;
typedef int iommu_fault_handler_t ;


 int BUG_ON (int) ;

void iommu_set_fault_handler(struct iommu_domain *domain,
     iommu_fault_handler_t handler,
     void *token)
{
 BUG_ON(!domain);

 domain->handler = handler;
 domain->handler_token = token;
}
