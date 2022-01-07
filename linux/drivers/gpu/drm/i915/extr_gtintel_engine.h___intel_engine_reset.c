
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* reset ) (struct intel_engine_cs*,int) ;} ;
struct intel_engine_cs {int serial; TYPE_1__ reset; } ;


 int stub1 (struct intel_engine_cs*,int) ;

__attribute__((used)) static inline void __intel_engine_reset(struct intel_engine_cs *engine,
     bool stalled)
{
 if (engine->reset.reset)
  engine->reset.reset(engine, stalled);
 engine->serial++;
}
