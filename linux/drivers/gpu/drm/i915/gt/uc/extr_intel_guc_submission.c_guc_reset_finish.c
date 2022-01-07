
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
struct intel_engine_execlists {TYPE_1__ tasklet; } ;
struct intel_engine_cs {int name; struct intel_engine_execlists execlists; } ;


 int GEM_TRACE (char*,int ,int ) ;
 scalar_t__ __tasklet_enable (TYPE_1__*) ;
 int atomic_read (int *) ;
 int tasklet_hi_schedule (TYPE_1__*) ;

__attribute__((used)) static void guc_reset_finish(struct intel_engine_cs *engine)
{
 struct intel_engine_execlists * const execlists = &engine->execlists;

 if (__tasklet_enable(&execlists->tasklet))

  tasklet_hi_schedule(&execlists->tasklet);

 GEM_TRACE("%s: depth->%d\n", engine->name,
    atomic_read(&execlists->tasklet.count));
}
