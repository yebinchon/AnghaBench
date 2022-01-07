
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dmm {scalar_t__ base; int wa_lock; scalar_t__ dmm_workaround; } ;


 int dmm_write_wa (struct dmm*,scalar_t__,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void dmm_write(struct dmm *dmm, u32 val, u32 reg)
{
 if (dmm->dmm_workaround) {
  unsigned long flags;

  spin_lock_irqsave(&dmm->wa_lock, flags);
  dmm_write_wa(dmm, val, reg);
  spin_unlock_irqrestore(&dmm->wa_lock, flags);
 } else {
  writel(val, dmm->base + reg);
 }
}
