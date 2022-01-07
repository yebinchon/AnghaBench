
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* prepare ) (struct intel_engine_cs*) ;} ;
struct intel_engine_cs {TYPE_1__ reset; int uncore; } ;


 int FORCEWAKE_ALL ;
 int intel_uncore_forcewake_get (int ,int ) ;
 int stub1 (struct intel_engine_cs*) ;

__attribute__((used)) static void reset_prepare_engine(struct intel_engine_cs *engine)
{







 intel_uncore_forcewake_get(engine->uncore, FORCEWAKE_ALL);
 engine->reset.prepare(engine);
}
