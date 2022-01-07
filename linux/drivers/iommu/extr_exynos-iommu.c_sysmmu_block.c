
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysmmu_drvdata {scalar_t__ sfrbase; } ;


 int CTRL_BLOCK ;
 scalar_t__ REG_MMU_CTRL ;
 scalar_t__ REG_MMU_STATUS ;
 int readl (scalar_t__) ;
 int sysmmu_unblock (struct sysmmu_drvdata*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static bool sysmmu_block(struct sysmmu_drvdata *data)
{
 int i = 120;

 writel(CTRL_BLOCK, data->sfrbase + REG_MMU_CTRL);
 while ((i > 0) && !(readl(data->sfrbase + REG_MMU_STATUS) & 1))
  --i;

 if (!(readl(data->sfrbase + REG_MMU_STATUS) & 1)) {
  sysmmu_unblock(data);
  return 0;
 }

 return 1;
}
