
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dep_map; } ;
struct TYPE_4__ {TYPE_2__ lock; int requests; } ;
struct intel_engine_cs {TYPE_1__ active; } ;


 int INIT_LIST_HEAD (int *) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int lock_map_acquire (int *) ;
 int lock_map_release (int *) ;
 int lockdep_set_subclass (TYPE_2__*,unsigned int) ;
 int spin_lock_init (TYPE_2__*) ;

void
intel_engine_init_active(struct intel_engine_cs *engine, unsigned int subclass)
{
 INIT_LIST_HEAD(&engine->active.requests);

 spin_lock_init(&engine->active.lock);
 lockdep_set_subclass(&engine->active.lock, subclass);
}
