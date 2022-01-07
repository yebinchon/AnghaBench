
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int count; int data; int (* func ) (int ) ;} ;
struct TYPE_4__ {int rb_root; } ;
struct intel_engine_execlists {TYPE_2__ tasklet; TYPE_1__ queue; } ;
struct intel_engine_cs {int name; struct intel_engine_execlists execlists; } ;


 int GEM_BUG_ON (int) ;
 int GEM_TRACE (char*,int ,int ) ;
 int RB_EMPTY_ROOT (int *) ;
 scalar_t__ __tasklet_enable (TYPE_2__*) ;
 int atomic_read (int *) ;
 int reset_in_progress (struct intel_engine_execlists* const) ;
 int stub1 (int ) ;
 int tasklet_hi_schedule (TYPE_2__*) ;

__attribute__((used)) static void execlists_reset_finish(struct intel_engine_cs *engine)
{
 struct intel_engine_execlists * const execlists = &engine->execlists;






 GEM_BUG_ON(!reset_in_progress(execlists));
 if (!RB_EMPTY_ROOT(&execlists->queue.rb_root))
  execlists->tasklet.func(execlists->tasklet.data);

 if (__tasklet_enable(&execlists->tasklet))

  tasklet_hi_schedule(&execlists->tasklet);
 GEM_TRACE("%s: depth->%d\n", engine->name,
    atomic_read(&execlists->tasklet.count));
}
