
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_iommu {scalar_t__ regbase; } ;


 int __raw_writel (int ,scalar_t__) ;

__attribute__((used)) static inline void iommu_write_reg(struct omap_iommu *obj, u32 val, size_t offs)
{
 __raw_writel(val, obj->regbase + offs);
}
