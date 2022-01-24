#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct intel_engine_cs {struct drm_i915_private* i915; } ;
struct i915_wa_list {int dummy; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNL_FAST_ANISO_L1_BANKING_FIX ; 
 int /*<<< orphan*/  CNL_HDC_CHICKEN0 ; 
 int /*<<< orphan*/  CNL_REVID_B0 ; 
 int /*<<< orphan*/  COMMON_SLICE_CHICKEN2 ; 
 int /*<<< orphan*/  DISABLE_EARLY_EOT ; 
 int /*<<< orphan*/  GEN7_ROW_CHICKEN2 ; 
 int /*<<< orphan*/  GEN8_CSC2_SBE_VUE_CACHE_CONSERVATIVE ; 
 int /*<<< orphan*/  GEN8_CS_CHICKEN1 ; 
 int /*<<< orphan*/  GEN8_ROW_CHICKEN ; 
 int /*<<< orphan*/  GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION ; 
 int /*<<< orphan*/  GEN9_PREEMPT_3D_OBJECT_LEVEL ; 
 int /*<<< orphan*/  GEN9_PREEMPT_GPGPU_COMMAND_LEVEL ; 
 int /*<<< orphan*/  GEN9_PREEMPT_GPGPU_LEVEL_MASK ; 
 int /*<<< orphan*/  HALF_SLICE_CHICKEN3 ; 
 int /*<<< orphan*/  HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT ; 
 scalar_t__ FUNC0 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PUSH_CONSTANT_DEREF_DISABLE ; 
 int /*<<< orphan*/  THROTTLE_12_5 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct intel_engine_cs *engine,
				     struct i915_wa_list *wal)
{
	struct drm_i915_private *i915 = engine->i915;

	/* WaForceContextSaveRestoreNonCoherent:cnl */
	FUNC2(CNL_HDC_CHICKEN0,
			  HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT);

	/* WaThrottleEUPerfToAvoidTDBackPressure:cnl(pre-prod) */
	if (FUNC0(i915, CNL_REVID_B0, CNL_REVID_B0))
		FUNC2(GEN8_ROW_CHICKEN, THROTTLE_12_5);

	/* WaDisableReplayBufferBankArbitrationOptimization:cnl */
	FUNC2(COMMON_SLICE_CHICKEN2,
			  GEN8_SBE_DISABLE_REPLAY_BUF_OPTIMIZATION);

	/* WaDisableEnhancedSBEVertexCaching:cnl (pre-prod) */
	if (FUNC0(i915, 0, CNL_REVID_B0))
		FUNC2(COMMON_SLICE_CHICKEN2,
				  GEN8_CSC2_SBE_VUE_CACHE_CONSERVATIVE);

	/* WaPushConstantDereferenceHoldDisable:cnl */
	FUNC2(GEN7_ROW_CHICKEN2, PUSH_CONSTANT_DEREF_DISABLE);

	/* FtrEnableFastAnisoL1BankingFix:cnl */
	FUNC2(HALF_SLICE_CHICKEN3, CNL_FAST_ANISO_L1_BANKING_FIX);

	/* WaDisable3DMidCmdPreemption:cnl */
	FUNC1(GEN8_CS_CHICKEN1, GEN9_PREEMPT_3D_OBJECT_LEVEL);

	/* WaDisableGPGPUMidCmdPreemption:cnl */
	FUNC3(GEN8_CS_CHICKEN1,
			    GEN9_PREEMPT_GPGPU_LEVEL_MASK,
			    GEN9_PREEMPT_GPGPU_COMMAND_LEVEL);

	/* WaDisableEarlyEOT:cnl */
	FUNC2(GEN8_ROW_CHICKEN, DISABLE_EARLY_EOT);
}