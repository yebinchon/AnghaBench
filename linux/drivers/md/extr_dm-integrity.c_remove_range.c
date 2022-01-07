
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_integrity_range {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct dm_integrity_c {TYPE_1__ endio_wait; } ;


 int remove_range_unlocked (struct dm_integrity_c*,struct dm_integrity_range*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void remove_range(struct dm_integrity_c *ic, struct dm_integrity_range *range)
{
 unsigned long flags;

 spin_lock_irqsave(&ic->endio_wait.lock, flags);
 remove_range_unlocked(ic, range);
 spin_unlock_irqrestore(&ic->endio_wait.lock, flags);
}
