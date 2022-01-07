
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sme_clr (unsigned long) ;
 void* phys_to_virt (int ) ;

__attribute__((used)) static inline void *iommu_phys_to_virt(unsigned long paddr)
{
 return phys_to_virt(__sme_clr(paddr));
}
