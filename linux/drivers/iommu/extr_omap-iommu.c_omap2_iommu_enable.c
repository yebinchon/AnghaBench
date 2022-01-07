
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_iommu {scalar_t__ has_bus_err_back; int name; int dev; scalar_t__ iopgd; } ;


 int EINVAL ;
 int IS_ALIGNED (int,int ) ;
 int MMU_GP_REG ;
 int MMU_GP_REG_BUS_ERR_BACK_EN ;
 int MMU_REVISION ;
 int MMU_TTB ;
 int SZ_16K ;
 int __iommu_set_twl (struct omap_iommu*,int) ;
 int dev_info (int ,char*,int ,int,int) ;
 int dra7_cfg_dspsys_mmu (struct omap_iommu*,int) ;
 int iommu_read_reg (struct omap_iommu*,int ) ;
 int iommu_write_reg (struct omap_iommu*,int,int ) ;
 int virt_to_phys (scalar_t__) ;

__attribute__((used)) static int omap2_iommu_enable(struct omap_iommu *obj)
{
 u32 l, pa;

 if (!obj->iopgd || !IS_ALIGNED((u32)obj->iopgd, SZ_16K))
  return -EINVAL;

 pa = virt_to_phys(obj->iopgd);
 if (!IS_ALIGNED(pa, SZ_16K))
  return -EINVAL;

 l = iommu_read_reg(obj, MMU_REVISION);
 dev_info(obj->dev, "%s: version %d.%d\n", obj->name,
   (l >> 4) & 0xf, l & 0xf);

 iommu_write_reg(obj, pa, MMU_TTB);

 dra7_cfg_dspsys_mmu(obj, 1);

 if (obj->has_bus_err_back)
  iommu_write_reg(obj, MMU_GP_REG_BUS_ERR_BACK_EN, MMU_GP_REG);

 __iommu_set_twl(obj, 1);

 return 0;
}
