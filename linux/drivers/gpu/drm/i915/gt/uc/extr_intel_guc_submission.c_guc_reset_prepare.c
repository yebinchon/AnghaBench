
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_execlists {int tasklet; } ;
struct intel_engine_cs {int name; struct intel_engine_execlists execlists; } ;


 int GEM_TRACE (char*,int ) ;
 int __tasklet_disable_sync_once (int *) ;

__attribute__((used)) static void guc_reset_prepare(struct intel_engine_cs *engine)
{
 struct intel_engine_execlists * const execlists = &engine->execlists;

 GEM_TRACE("%s\n", engine->name);
 __tasklet_disable_sync_once(&execlists->tasklet);
}
