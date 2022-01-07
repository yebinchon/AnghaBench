
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct intel_engine_cs {TYPE_1__ active; int name; } ;


 int GEM_TRACE (char*,int ) ;
 int __execlists_reset (struct intel_engine_cs*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void execlists_reset(struct intel_engine_cs *engine, bool stalled)
{
 unsigned long flags;

 GEM_TRACE("%s\n", engine->name);

 spin_lock_irqsave(&engine->active.lock, flags);

 __execlists_reset(engine, stalled);

 spin_unlock_irqrestore(&engine->active.lock, flags);
}
