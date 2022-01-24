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
struct i915_wa_list {int dummy; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int BDW_DISABLE_HDC_INVALIDATION ; 
 int ECOCHK_DIS_TLB ; 
 int /*<<< orphan*/  GAM_ECOCHK ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int MMCD_HOTSPOT_EN ; 
 int /*<<< orphan*/  MMCD_MISC_CTRL ; 
 int MMCD_PCLA ; 
 int /*<<< orphan*/  FUNC2 (struct i915_wa_list*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct drm_i915_private *i915, struct i915_wa_list *wal)
{
	/* WaDisableKillLogic:bxt,skl,kbl */
	if (!FUNC1(i915))
		FUNC2(wal,
			    GAM_ECOCHK,
			    ECOCHK_DIS_TLB);

	if (FUNC0(i915)) {
		/* WaCompressedResourceSamplerPbeMediaNewHashMode:skl,kbl
		 *
		 * Must match Display Engine. See
		 * WaCompressedResourceDisplayNewHashMode.
		 */
		FUNC2(wal,
			    MMCD_MISC_CTRL,
			    MMCD_PCLA | MMCD_HOTSPOT_EN);
	}

	/* WaDisableHDCInvalidation:skl,bxt,kbl,cfl */
	FUNC2(wal,
		    GAM_ECOCHK,
		    BDW_DISABLE_HDC_INVALIDATION);
}