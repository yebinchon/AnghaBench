
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct refill_engine {int idle_node; } ;
struct TYPE_2__ {int engine_queue; int engine_counter; int idle_head; } ;


 int atomic_inc (int *) ;
 int list_add (int *,int *) ;
 int list_lock ;
 TYPE_1__* omap_dmm ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void release_engine(struct refill_engine *engine)
{
 unsigned long flags;

 spin_lock_irqsave(&list_lock, flags);
 list_add(&engine->idle_node, &omap_dmm->idle_head);
 spin_unlock_irqrestore(&list_lock, flags);

 atomic_inc(&omap_dmm->engine_counter);
 wake_up_interruptible(&omap_dmm->engine_queue);
}
