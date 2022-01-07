
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysmmu_drvdata {scalar_t__ sfrbase; int version; } ;


 int MMU_MAJ_VER (int ) ;
 scalar_t__ REG_MMU_FLUSH ;
 scalar_t__ REG_V5_MMU_FLUSH_ALL ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void __sysmmu_tlb_invalidate(struct sysmmu_drvdata *data)
{
 if (MMU_MAJ_VER(data->version) < 5)
  writel(0x1, data->sfrbase + REG_MMU_FLUSH);
 else
  writel(0x1, data->sfrbase + REG_V5_MMU_FLUSH_ALL);
}
