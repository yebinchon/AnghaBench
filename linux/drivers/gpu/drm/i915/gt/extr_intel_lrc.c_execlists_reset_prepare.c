
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
struct intel_engine_execlists {TYPE_2__ tasklet; } ;
struct TYPE_3__ {int lock; } ;
struct intel_engine_cs {TYPE_1__ active; int name; struct intel_engine_execlists execlists; } ;


 int GEM_BUG_ON (int) ;
 int GEM_TRACE (char*,int ,int ) ;
 int __tasklet_disable_sync_once (TYPE_2__*) ;
 int atomic_read (int *) ;
 int intel_engine_stop_cs (struct intel_engine_cs*) ;
 int reset_in_progress (struct intel_engine_execlists* const) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void execlists_reset_prepare(struct intel_engine_cs *engine)
{
 struct intel_engine_execlists * const execlists = &engine->execlists;
 unsigned long flags;

 GEM_TRACE("%s: depth<-%d\n", engine->name,
    atomic_read(&execlists->tasklet.count));
 __tasklet_disable_sync_once(&execlists->tasklet);
 GEM_BUG_ON(!reset_in_progress(execlists));


 spin_lock_irqsave(&engine->active.lock, flags);
 spin_unlock_irqrestore(&engine->active.lock, flags);
 intel_engine_stop_cs(engine);
}
