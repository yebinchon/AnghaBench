
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dmm {scalar_t__ base; int wa_lock; scalar_t__ dmm_workaround; } ;


 scalar_t__ dmm_read_wa (struct dmm*,scalar_t__) ;
 scalar_t__ readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 dmm_read(struct dmm *dmm, u32 reg)
{
 if (dmm->dmm_workaround) {
  u32 v;
  unsigned long flags;

  spin_lock_irqsave(&dmm->wa_lock, flags);
  v = dmm_read_wa(dmm, reg);
  spin_unlock_irqrestore(&dmm->wa_lock, flags);

  return v;
 } else {
  return readl(dmm->base + reg);
 }
}
