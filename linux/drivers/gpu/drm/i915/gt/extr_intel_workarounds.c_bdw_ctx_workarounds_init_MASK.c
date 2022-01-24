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
 int DOP_CLOCK_GATING_DISABLE ; 
 int /*<<< orphan*/  GEN7_ROW_CHICKEN2 ; 
 int /*<<< orphan*/  GEN8_ROW_CHICKEN ; 
 int GEN8_SAMPLER_POWER_BYPASS_DIS ; 
 int /*<<< orphan*/  HALF_SLICE_CHICKEN3 ; 
 int /*<<< orphan*/  HDC_CHICKEN0 ; 
 int HDC_FENCE_DEST_SLM_DISABLE ; 
 int HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int STALL_DOP_GATING_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_engine_cs*,struct i915_wa_list*) ; 

__attribute__((used)) static void FUNC3(struct intel_engine_cs *engine,
				     struct i915_wa_list *wal)
{
	struct drm_i915_private *i915 = engine->i915;

	FUNC2(engine, wal);

	/* WaDisableThreadStallDopClockGating:bdw (pre-production) */
	FUNC1(GEN8_ROW_CHICKEN, STALL_DOP_GATING_DISABLE);

	/* WaDisableDopClockGating:bdw
	 *
	 * Also see the related UCGTCL1 write in broadwell_init_clock_gating()
	 * to disable EUTC clock gating.
	 */
	FUNC1(GEN7_ROW_CHICKEN2,
			  DOP_CLOCK_GATING_DISABLE);

	FUNC1(HALF_SLICE_CHICKEN3,
			  GEN8_SAMPLER_POWER_BYPASS_DIS);

	FUNC1(HDC_CHICKEN0,
			  /* WaForceContextSaveRestoreNonCoherent:bdw */
			  HDC_FORCE_CONTEXT_SAVE_RESTORE_NON_COHERENT |
			  /* WaDisableFenceDestinationToSLM:bdw (pre-prod) */
			  (FUNC0(i915) ? HDC_FENCE_DEST_SLM_DISABLE : 0));
}