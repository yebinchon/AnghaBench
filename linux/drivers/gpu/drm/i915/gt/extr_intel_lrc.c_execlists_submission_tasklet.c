
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int * pending; } ;
struct intel_engine_cs {TYPE_2__ active; TYPE_1__ execlists; } ;


 int READ_ONCE (int ) ;
 int __execlists_submission_tasklet (struct intel_engine_cs* const) ;
 int process_csb (struct intel_engine_cs* const) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void execlists_submission_tasklet(unsigned long data)
{
 struct intel_engine_cs * const engine = (struct intel_engine_cs *)data;
 unsigned long flags;

 process_csb(engine);
 if (!READ_ONCE(engine->execlists.pending[0])) {
  spin_lock_irqsave(&engine->active.lock, flags);
  __execlists_submission_tasklet(engine);
  spin_unlock_irqrestore(&engine->active.lock, flags);
 }
}
