
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_clone_metadata {int bitmap_lock; TYPE_1__* dmap; } ;
struct TYPE_2__ {scalar_t__ changed; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool dm_clone_changed_this_transaction(struct dm_clone_metadata *cmd)
{
 bool r;
 unsigned long flags;

 spin_lock_irqsave(&cmd->bitmap_lock, flags);
 r = cmd->dmap[0].changed || cmd->dmap[1].changed;
 spin_unlock_irqrestore(&cmd->bitmap_lock, flags);

 return r;
}
