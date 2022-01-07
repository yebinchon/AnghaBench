
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int dummy; } ;
struct i915_wa_list {int dummy; } ;


 int ASYNC_FLIP_PERF_DISABLE ;
 int CACHE_MODE_0_GEN7 ;
 int CACHE_MODE_1 ;
 int GEN6_WIZ_HASHING_16x4 ;
 int GEN6_WIZ_HASHING_MASK ;
 int GEN7_GT_MODE ;
 int GEN8_4x4_STC_OPTIMIZATION_DISABLE ;
 int GEN8_ROW_CHICKEN ;
 int HDC_CHICKEN0 ;
 int HDC_DONOT_FETCH_MEM_WHEN_MASKED ;
 int HDC_FORCE_NON_COHERENT ;
 int HIZ_RAW_STALL_OPT_DISABLE ;
 int INSTPM ;
 int INSTPM_FORCE_ORDERING ;
 int MI_MODE ;
 int PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE ;
 int WA_CLR_BIT_MASKED (int ,int ) ;
 int WA_SET_BIT_MASKED (int ,int) ;
 int WA_SET_FIELD_MASKED (int ,int ,int ) ;

__attribute__((used)) static void gen8_ctx_workarounds_init(struct intel_engine_cs *engine,
          struct i915_wa_list *wal)
{
 WA_SET_BIT_MASKED(INSTPM, INSTPM_FORCE_ORDERING);


 WA_SET_BIT_MASKED(MI_MODE, ASYNC_FLIP_PERF_DISABLE);


 WA_SET_BIT_MASKED(GEN8_ROW_CHICKEN,
     PARTIAL_INSTRUCTION_SHOOTDOWN_DISABLE);







 WA_SET_BIT_MASKED(HDC_CHICKEN0,
     HDC_DONOT_FETCH_MEM_WHEN_MASKED |
     HDC_FORCE_NON_COHERENT);
 WA_CLR_BIT_MASKED(CACHE_MODE_0_GEN7, HIZ_RAW_STALL_OPT_DISABLE);


 WA_SET_BIT_MASKED(CACHE_MODE_1, GEN8_4x4_STC_OPTIMIZATION_DISABLE);
 WA_SET_FIELD_MASKED(GEN7_GT_MODE,
       GEN6_WIZ_HASHING_MASK,
       GEN6_WIZ_HASHING_16x4);
}
