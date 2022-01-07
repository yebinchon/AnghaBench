
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_iommu {int dummy; } ;
struct cr_regs {int cam; int ram; } ;


 int MMU_CAM ;
 int MMU_CAM_V ;
 int MMU_FLUSH_ENTRY ;
 int MMU_LD_TLB ;
 int MMU_RAM ;
 int iommu_write_reg (struct omap_iommu*,int,int ) ;

__attribute__((used)) static void iotlb_load_cr(struct omap_iommu *obj, struct cr_regs *cr)
{
 iommu_write_reg(obj, cr->cam | MMU_CAM_V, MMU_CAM);
 iommu_write_reg(obj, cr->ram, MMU_RAM);

 iommu_write_reg(obj, 1, MMU_FLUSH_ENTRY);
 iommu_write_reg(obj, 1, MMU_LD_TLB);
}
