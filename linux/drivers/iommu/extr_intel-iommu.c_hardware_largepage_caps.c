
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int iommu_superpage; } ;


 unsigned long VTD_STRIDE_MASK ;
 unsigned long VTD_STRIDE_SHIFT ;

__attribute__((used)) static inline int hardware_largepage_caps(struct dmar_domain *domain,
       unsigned long iov_pfn,
       unsigned long phy_pfn,
       unsigned long pages)
{
 int support, level = 1;
 unsigned long pfnmerge;

 support = domain->iommu_superpage;





 pfnmerge = iov_pfn | phy_pfn;

 while (support && !(pfnmerge & ~VTD_STRIDE_MASK)) {
  pages >>= VTD_STRIDE_SHIFT;
  if (!pages)
   break;
  pfnmerge >>= VTD_STRIDE_SHIFT;
  level++;
  support--;
 }
 return level;
}
