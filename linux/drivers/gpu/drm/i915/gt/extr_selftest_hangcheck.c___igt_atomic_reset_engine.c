
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tasklet_struct {int dummy; } ;
struct TYPE_2__ {struct tasklet_struct tasklet; } ;
struct intel_engine_cs {int name; TYPE_1__ execlists; } ;
struct igt_atomic_section {int name; int (* critical_section_end ) () ;int (* critical_section_begin ) () ;} ;


 int GEM_TRACE (char*,int ,char const*,int ) ;
 int intel_engine_reset (struct intel_engine_cs*,int *) ;
 int pr_err (char*,int ,char const*,int ) ;
 int stub1 () ;
 int stub2 () ;
 int tasklet_disable_nosync (struct tasklet_struct* const) ;
 int tasklet_enable (struct tasklet_struct* const) ;

__attribute__((used)) static int __igt_atomic_reset_engine(struct intel_engine_cs *engine,
         const struct igt_atomic_section *p,
         const char *mode)
{
 struct tasklet_struct * const t = &engine->execlists.tasklet;
 int err;

 GEM_TRACE("i915_reset_engine(%s:%s) under %s\n",
    engine->name, mode, p->name);

 tasklet_disable_nosync(t);
 p->critical_section_begin();

 err = intel_engine_reset(engine, ((void*)0));

 p->critical_section_end();
 tasklet_enable(t);

 if (err)
  pr_err("i915_reset_engine(%s:%s) failed under %s\n",
         engine->name, mode, p->name);

 return err;
}
