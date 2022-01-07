
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysmmu_drvdata {int active; int lock; scalar_t__ sfrbase; int clk_master; } ;


 int CTRL_DISABLE ;
 scalar_t__ REG_MMU_CFG ;
 scalar_t__ REG_MMU_CTRL ;
 int __sysmmu_disable_clocks (struct sysmmu_drvdata*) ;
 int clk_enable (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void __sysmmu_disable(struct sysmmu_drvdata *data)
{
 unsigned long flags;

 clk_enable(data->clk_master);

 spin_lock_irqsave(&data->lock, flags);
 writel(CTRL_DISABLE, data->sfrbase + REG_MMU_CTRL);
 writel(0, data->sfrbase + REG_MMU_CFG);
 data->active = 0;
 spin_unlock_irqrestore(&data->lock, flags);

 __sysmmu_disable_clocks(data);
}
