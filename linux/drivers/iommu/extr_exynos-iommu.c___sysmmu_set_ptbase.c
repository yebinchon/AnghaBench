
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysmmu_drvdata {scalar_t__ sfrbase; int version; } ;
typedef int phys_addr_t ;


 int MMU_MAJ_VER (int ) ;
 int PAGE_SHIFT ;
 scalar_t__ REG_PT_BASE_ADDR ;
 scalar_t__ REG_V5_PT_BASE_PFN ;
 int __sysmmu_tlb_invalidate (struct sysmmu_drvdata*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void __sysmmu_set_ptbase(struct sysmmu_drvdata *data, phys_addr_t pgd)
{
 if (MMU_MAJ_VER(data->version) < 5)
  writel(pgd, data->sfrbase + REG_PT_BASE_ADDR);
 else
  writel(pgd >> PAGE_SHIFT,
        data->sfrbase + REG_V5_PT_BASE_PFN);

 __sysmmu_tlb_invalidate(data);
}
