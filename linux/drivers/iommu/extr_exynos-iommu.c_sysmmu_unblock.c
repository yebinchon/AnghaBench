
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysmmu_drvdata {scalar_t__ sfrbase; } ;


 int CTRL_ENABLE ;
 scalar_t__ REG_MMU_CTRL ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void sysmmu_unblock(struct sysmmu_drvdata *data)
{
 writel(CTRL_ENABLE, data->sfrbase + REG_MMU_CTRL);
}
