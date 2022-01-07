
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct powersave {unsigned long long started_channels; int lock; } ;
struct coh901318_chan {unsigned long long id; TYPE_1__* base; } ;
struct TYPE_2__ {struct powersave pm; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void disable_powersave(struct coh901318_chan *cohc)
{
 unsigned long flags;
 struct powersave *pm = &cohc->base->pm;

 spin_lock_irqsave(&pm->lock, flags);

 pm->started_channels |= (1ULL << cohc->id);

 spin_unlock_irqrestore(&pm->lock, flags);
}
