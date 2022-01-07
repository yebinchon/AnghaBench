
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tasklet_struct {int data; int (* func ) (int ) ;} ;
struct TYPE_9__ {int rb_root; } ;
struct TYPE_10__ {TYPE_4__ queue; struct tasklet_struct tasklet; } ;
struct intel_engine_cs {TYPE_5__ execlists; TYPE_3__* i915; int gt; } ;
struct TYPE_7__ {TYPE_1__* pdev; } ;
struct TYPE_8__ {TYPE_2__ drm; } ;
struct TYPE_6__ {int irq; } ;


 int RB_EMPTY_ROOT (int *) ;
 scalar_t__ __tasklet_is_enabled (struct tasklet_struct*) ;
 scalar_t__ execlists_active (TYPE_5__*) ;
 int intel_engine_pm_is_awake (struct intel_engine_cs*) ;
 scalar_t__ intel_gt_is_wedged (int ) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int ring_is_idle (struct intel_engine_cs*) ;
 int stub1 (int ) ;
 int synchronize_hardirq (int ) ;
 scalar_t__ tasklet_trylock (struct tasklet_struct*) ;
 int tasklet_unlock (struct tasklet_struct*) ;
 int tasklet_unlock_wait (struct tasklet_struct*) ;

bool intel_engine_is_idle(struct intel_engine_cs *engine)
{

 if (intel_gt_is_wedged(engine->gt))
  return 1;

 if (!intel_engine_pm_is_awake(engine))
  return 1;


 if (execlists_active(&engine->execlists)) {
  struct tasklet_struct *t = &engine->execlists.tasklet;

  synchronize_hardirq(engine->i915->drm.pdev->irq);

  local_bh_disable();
  if (tasklet_trylock(t)) {

   if (__tasklet_is_enabled(t))
    t->func(t->data);
   tasklet_unlock(t);
  }
  local_bh_enable();


  tasklet_unlock_wait(t);

  if (execlists_active(&engine->execlists))
   return 0;
 }


 if (!RB_EMPTY_ROOT(&engine->execlists.queue.rb_root))
  return 0;


 return ring_is_idle(engine);
}
