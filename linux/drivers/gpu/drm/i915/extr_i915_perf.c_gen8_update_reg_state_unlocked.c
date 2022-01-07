
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct intel_context {int sseu; TYPE_1__* engine; } ;
struct i915_perf_stream {int period_exponent; scalar_t__ periodic; } ;
struct i915_oa_config {int dummy; } ;
struct TYPE_4__ {scalar_t__ ctx_flexeu0_offset; scalar_t__ ctx_oactxctrl_offset; } ;
struct drm_i915_private {TYPE_2__ perf; } ;
typedef int i915_reg_t ;
struct TYPE_3__ {struct drm_i915_private* i915; } ;


 int ARRAY_SIZE (int *) ;
 int CTX_REG (scalar_t__*,scalar_t__,int ,int) ;
 scalar_t__ CTX_R_PWR_CLK_STATE ;
 int EU_PERF_CNTL0 ;
 int EU_PERF_CNTL1 ;
 int EU_PERF_CNTL2 ;
 int EU_PERF_CNTL3 ;
 int EU_PERF_CNTL4 ;
 int EU_PERF_CNTL5 ;
 int EU_PERF_CNTL6 ;
 int GEN8_OACTXCONTROL ;
 int GEN8_OA_COUNTER_RESUME ;
 int GEN8_OA_TIMER_ENABLE ;
 int GEN8_OA_TIMER_PERIOD_SHIFT ;
 int GEN8_R_PWR_CLK_STATE ;
 int intel_sseu_make_rpcs (struct drm_i915_private*,int *) ;
 int oa_config_flex_reg (struct i915_oa_config const*,int ) ;

__attribute__((used)) static void
gen8_update_reg_state_unlocked(struct i915_perf_stream *stream,
          struct intel_context *ce,
          u32 *reg_state,
          const struct i915_oa_config *oa_config)
{
 struct drm_i915_private *i915 = ce->engine->i915;
 u32 ctx_oactxctrl = i915->perf.ctx_oactxctrl_offset;
 u32 ctx_flexeu0 = i915->perf.ctx_flexeu0_offset;

 i915_reg_t flex_regs[] = {
  EU_PERF_CNTL0,
  EU_PERF_CNTL1,
  EU_PERF_CNTL2,
  EU_PERF_CNTL3,
  EU_PERF_CNTL4,
  EU_PERF_CNTL5,
  EU_PERF_CNTL6,
 };
 int i;

 CTX_REG(reg_state, ctx_oactxctrl, GEN8_OACTXCONTROL,
  (stream->period_exponent << GEN8_OA_TIMER_PERIOD_SHIFT) |
  (stream->periodic ? GEN8_OA_TIMER_ENABLE : 0) |
  GEN8_OA_COUNTER_RESUME);

 for (i = 0; i < ARRAY_SIZE(flex_regs); i++) {
  CTX_REG(reg_state, ctx_flexeu0 + i * 2, flex_regs[i],
   oa_config_flex_reg(oa_config, flex_regs[i]));
 }

 CTX_REG(reg_state,
  CTX_R_PWR_CLK_STATE, GEN8_R_PWR_CLK_STATE,
  intel_sseu_make_rpcs(i915, &ce->sseu));
}
