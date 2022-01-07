
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enabled; scalar_t__ active; int lock; int start; } ;
struct intel_engine_cs {TYPE_1__ stats; } ;


 int GEM_BUG_ON (int) ;
 scalar_t__ READ_ONCE (scalar_t__) ;
 int ktime_get () ;
 int write_seqlock_irqsave (int *,unsigned long) ;
 int write_sequnlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void intel_engine_context_in(struct intel_engine_cs *engine)
{
 unsigned long flags;

 if (READ_ONCE(engine->stats.enabled) == 0)
  return;

 write_seqlock_irqsave(&engine->stats.lock, flags);

 if (engine->stats.enabled > 0) {
  if (engine->stats.active++ == 0)
   engine->stats.start = ktime_get();
  GEM_BUG_ON(engine->stats.active == 0);
 }

 write_sequnlock_irqrestore(&engine->stats.lock, flags);
}
