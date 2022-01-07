
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int agaw; } ;


 int BITS_PER_LONG ;
 int VTD_PAGE_SHIFT ;
 int agaw_to_width (int ) ;

__attribute__((used)) static inline int domain_pfn_supported(struct dmar_domain *domain,
           unsigned long pfn)
{
 int addr_width = agaw_to_width(domain->agaw) - VTD_PAGE_SHIFT;

 return !(addr_width < BITS_PER_LONG && pfn >> addr_width);
}
