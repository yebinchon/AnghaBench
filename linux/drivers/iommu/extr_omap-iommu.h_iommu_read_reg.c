
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_iommu {scalar_t__ regbase; } ;


 int __raw_readl (scalar_t__) ;

__attribute__((used)) static inline u32 iommu_read_reg(struct omap_iommu *obj, size_t offs)
{
 return __raw_readl(obj->regbase + offs);
}
