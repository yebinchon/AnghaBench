
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int name; } ;


 int ENGINE_WRITE_FW (struct intel_engine_cs*,int ,int ) ;
 int GEM_TRACE (char*,int ) ;
 int RING_MI_MODE ;
 int STOP_RING ;
 int _MASKED_BIT_DISABLE (int ) ;

void intel_engine_cancel_stop_cs(struct intel_engine_cs *engine)
{
 GEM_TRACE("%s\n", engine->name);

 ENGINE_WRITE_FW(engine, RING_MI_MODE, _MASKED_BIT_DISABLE(STOP_RING));
}
