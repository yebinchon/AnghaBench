
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enabled; int lock; scalar_t__ active; int total; } ;
struct intel_engine_cs {TYPE_1__ stats; } ;


 int WARN_ON_ONCE (int) ;
 int __intel_engine_get_busy_time (struct intel_engine_cs*) ;
 int intel_engine_supports_stats (struct intel_engine_cs*) ;
 int write_seqlock_irqsave (int *,unsigned long) ;
 int write_sequnlock_irqrestore (int *,unsigned long) ;

void intel_disable_engine_stats(struct intel_engine_cs *engine)
{
 unsigned long flags;

 if (!intel_engine_supports_stats(engine))
  return;

 write_seqlock_irqsave(&engine->stats.lock, flags);
 WARN_ON_ONCE(engine->stats.enabled == 0);
 if (--engine->stats.enabled == 0) {
  engine->stats.total = __intel_engine_get_busy_time(engine);
  engine->stats.active = 0;
 }
 write_sequnlock_irqrestore(&engine->stats.lock, flags);
}
