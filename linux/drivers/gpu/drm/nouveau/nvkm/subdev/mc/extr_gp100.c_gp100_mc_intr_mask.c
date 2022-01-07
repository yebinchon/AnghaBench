
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_mc {int dummy; } ;
struct gp100_mc {int mask; int lock; } ;


 struct gp100_mc* gp100_mc (struct nvkm_mc*) ;
 int gp100_mc_intr_update (struct gp100_mc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
gp100_mc_intr_mask(struct nvkm_mc *base, u32 mask, u32 intr)
{
 struct gp100_mc *mc = gp100_mc(base);
 unsigned long flags;
 spin_lock_irqsave(&mc->lock, flags);
 mc->mask = (mc->mask & ~mask) | intr;
 gp100_mc_intr_update(mc);
 spin_unlock_irqrestore(&mc->lock, flags);
}
