
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int vma; } ;
struct intel_engine_cs {TYPE_1__ status_page; int i915; int uncore; } ;


 int ENGINE_POSTING_READ (struct intel_engine_cs*,int ) ;
 int ENGINE_WRITE_FW (struct intel_engine_cs*,int ,int ) ;
 int FORCEWAKE_ALL ;
 int GEN11_GFX_DISABLE_LEGACY_MODE ;
 int GFX_RUN_LIST_ENABLE ;
 int INTEL_GEN (int ) ;
 int RING_HWS_PGA ;
 int RING_MI_MODE ;
 int RING_MODE_GEN7 ;
 int STOP_RING ;
 int _MASKED_BIT_DISABLE (int ) ;
 int _MASKED_BIT_ENABLE (int ) ;
 int assert_forcewakes_active (int ,int ) ;
 int i915_ggtt_offset (int ) ;
 int intel_engine_set_hwsp_writemask (struct intel_engine_cs*,unsigned int) ;

__attribute__((used)) static void enable_execlists(struct intel_engine_cs *engine)
{
 u32 mode;

 assert_forcewakes_active(engine->uncore, FORCEWAKE_ALL);

 intel_engine_set_hwsp_writemask(engine, ~0u);

 if (INTEL_GEN(engine->i915) >= 11)
  mode = _MASKED_BIT_ENABLE(GEN11_GFX_DISABLE_LEGACY_MODE);
 else
  mode = _MASKED_BIT_ENABLE(GFX_RUN_LIST_ENABLE);
 ENGINE_WRITE_FW(engine, RING_MODE_GEN7, mode);

 ENGINE_WRITE_FW(engine, RING_MI_MODE, _MASKED_BIT_DISABLE(STOP_RING));

 ENGINE_WRITE_FW(engine,
   RING_HWS_PGA,
   i915_ggtt_offset(engine->status_page.vma));
 ENGINE_POSTING_READ(engine, RING_HWS_PGA);
}
