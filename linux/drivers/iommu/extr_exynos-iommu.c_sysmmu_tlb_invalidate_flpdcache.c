
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysmmu_iova_t ;
struct sysmmu_drvdata {scalar_t__ version; int lock; int clk_master; scalar_t__ active; } ;


 scalar_t__ MAKE_MMU_VER (int,int) ;
 int __sysmmu_tlb_invalidate (struct sysmmu_drvdata*) ;
 int __sysmmu_tlb_invalidate_entry (struct sysmmu_drvdata*,int ,int) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ sysmmu_block (struct sysmmu_drvdata*) ;
 int sysmmu_unblock (struct sysmmu_drvdata*) ;

__attribute__((used)) static void sysmmu_tlb_invalidate_flpdcache(struct sysmmu_drvdata *data,
         sysmmu_iova_t iova)
{
 unsigned long flags;

 spin_lock_irqsave(&data->lock, flags);
 if (data->active && data->version >= MAKE_MMU_VER(3, 3)) {
  clk_enable(data->clk_master);
  if (sysmmu_block(data)) {
   if (data->version >= MAKE_MMU_VER(5, 0))
    __sysmmu_tlb_invalidate(data);
   else
    __sysmmu_tlb_invalidate_entry(data, iova, 1);
   sysmmu_unblock(data);
  }
  clk_disable(data->clk_master);
 }
 spin_unlock_irqrestore(&data->lock, flags);
}
