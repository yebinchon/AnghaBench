
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protection_domain {int dummy; } ;


 int CMD_INV_IOMMU_ALL_PAGES_ADDRESS ;
 int __domain_flush_pages (struct protection_domain*,int ,int ,int ) ;

__attribute__((used)) static void domain_flush_tlb(struct protection_domain *domain)
{
 __domain_flush_pages(domain, 0, CMD_INV_IOMMU_ALL_PAGES_ADDRESS, 0);
}
