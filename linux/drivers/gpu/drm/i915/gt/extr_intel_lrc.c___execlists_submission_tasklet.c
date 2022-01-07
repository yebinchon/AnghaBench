
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * pending; } ;
struct TYPE_3__ {int lock; } ;
struct intel_engine_cs {TYPE_2__ execlists; TYPE_1__ active; } ;


 int execlists_dequeue (struct intel_engine_cs* const) ;
 int lockdep_assert_held (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void __execlists_submission_tasklet(struct intel_engine_cs *const engine)
{
 lockdep_assert_held(&engine->active.lock);
 if (!engine->execlists.pending[0]) {
  rcu_read_lock();
  execlists_dequeue(engine);
  rcu_read_unlock();
 }
}
