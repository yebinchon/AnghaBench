
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysmmu_drvdata {int active; int clk_master; int lock; scalar_t__ sfrbase; int pgtable; } ;


 int CTRL_BLOCK ;
 int CTRL_ENABLE ;
 scalar_t__ REG_MMU_CTRL ;
 int __sysmmu_enable_clocks (struct sysmmu_drvdata*) ;
 int __sysmmu_init_config (struct sysmmu_drvdata*) ;
 int __sysmmu_set_ptbase (struct sysmmu_drvdata*,int ) ;
 int clk_disable (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void __sysmmu_enable(struct sysmmu_drvdata *data)
{
 unsigned long flags;

 __sysmmu_enable_clocks(data);

 spin_lock_irqsave(&data->lock, flags);
 writel(CTRL_BLOCK, data->sfrbase + REG_MMU_CTRL);
 __sysmmu_init_config(data);
 __sysmmu_set_ptbase(data, data->pgtable);
 writel(CTRL_ENABLE, data->sfrbase + REG_MMU_CTRL);
 data->active = 1;
 spin_unlock_irqrestore(&data->lock, flags);







 clk_disable(data->clk_master);
}
