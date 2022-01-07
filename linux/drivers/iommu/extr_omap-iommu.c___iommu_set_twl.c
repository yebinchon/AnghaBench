
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_iommu {int dummy; } ;


 int MMU_CNTL ;
 int MMU_CNTL_MASK ;
 int MMU_CNTL_MMU_EN ;
 int MMU_CNTL_TWL_EN ;
 int MMU_IRQENABLE ;
 int MMU_IRQ_TLB_MISS_MASK ;
 int MMU_IRQ_TWL_MASK ;
 int iommu_read_reg (struct omap_iommu*,int ) ;
 int iommu_write_reg (struct omap_iommu*,int,int ) ;

__attribute__((used)) static void __iommu_set_twl(struct omap_iommu *obj, bool on)
{
 u32 l = iommu_read_reg(obj, MMU_CNTL);

 if (on)
  iommu_write_reg(obj, MMU_IRQ_TWL_MASK, MMU_IRQENABLE);
 else
  iommu_write_reg(obj, MMU_IRQ_TLB_MISS_MASK, MMU_IRQENABLE);

 l &= ~MMU_CNTL_MASK;
 if (on)
  l |= (MMU_CNTL_MMU_EN | MMU_CNTL_TWL_EN);
 else
  l |= (MMU_CNTL_MMU_EN);

 iommu_write_reg(obj, l, MMU_CNTL);
}
