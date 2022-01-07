
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* finish ) (struct intel_engine_cs*) ;} ;
struct intel_engine_cs {int uncore; TYPE_1__ reset; } ;


 int FORCEWAKE_ALL ;
 int intel_engine_signal_breadcrumbs (struct intel_engine_cs*) ;
 int intel_uncore_forcewake_put (int ,int ) ;
 int stub1 (struct intel_engine_cs*) ;

__attribute__((used)) static void reset_finish_engine(struct intel_engine_cs *engine)
{
 engine->reset.finish(engine);
 intel_uncore_forcewake_put(engine->uncore, FORCEWAKE_ALL);

 intel_engine_signal_breadcrumbs(engine);
}
