
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enabled; scalar_t__ active; int lock; void* total; int enabled_at; int start; } ;
struct intel_engine_cs {TYPE_1__ stats; } ;
typedef int ktime_t ;


 scalar_t__ READ_ONCE (scalar_t__) ;
 void* ktime_add (void*,int ) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 int write_seqlock_irqsave (int *,unsigned long) ;
 int write_sequnlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void intel_engine_context_out(struct intel_engine_cs *engine)
{
 unsigned long flags;

 if (READ_ONCE(engine->stats.enabled) == 0)
  return;

 write_seqlock_irqsave(&engine->stats.lock, flags);

 if (engine->stats.enabled > 0) {
  ktime_t last;

  if (engine->stats.active && --engine->stats.active == 0) {




   last = ktime_sub(ktime_get(), engine->stats.start);

   engine->stats.total = ktime_add(engine->stats.total,
       last);
  } else if (engine->stats.active == 0) {





   last = ktime_sub(ktime_get(), engine->stats.enabled_at);

   engine->stats.total = ktime_add(engine->stats.total,
       last);
  }
 }

 write_sequnlock_irqrestore(&engine->stats.lock, flags);
}
