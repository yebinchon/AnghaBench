
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_iommu {int name; int dev; } ;


 int MMU_CNTL ;
 int MMU_CNTL_MASK ;
 int dev_dbg (int ,char*,int ) ;
 int dra7_cfg_dspsys_mmu (struct omap_iommu*,int) ;
 int iommu_read_reg (struct omap_iommu*,int ) ;
 int iommu_write_reg (struct omap_iommu*,int ,int ) ;

__attribute__((used)) static void omap2_iommu_disable(struct omap_iommu *obj)
{
 u32 l = iommu_read_reg(obj, MMU_CNTL);

 l &= ~MMU_CNTL_MASK;
 iommu_write_reg(obj, l, MMU_CNTL);
 dra7_cfg_dspsys_mmu(obj, 0);

 dev_dbg(obj->dev, "%s is shutting down\n", obj->name);
}
