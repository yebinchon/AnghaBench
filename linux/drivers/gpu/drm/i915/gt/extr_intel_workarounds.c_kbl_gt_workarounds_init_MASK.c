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
 int /*<<< orphan*/  GAMT_CHKN_BIT_REG ; 
 int /*<<< orphan*/  GAMT_CHKN_DISABLE_DYNAMIC_CREDIT_SHARING ; 
 int /*<<< orphan*/  GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS ; 
 int /*<<< orphan*/  GEN7_UCGCTL4 ; 
 int /*<<< orphan*/  GEN8_EU_GAUNIT_CLOCK_GATE_DISABLE ; 
 int /*<<< orphan*/  GEN9_GAMT_ECO_REG_RW_IA ; 
 scalar_t__ FUNC0 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KBL_REVID_B0 ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_wa_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct drm_i915_private *i915, struct i915_wa_list *wal)
{
	FUNC1(i915, wal);

	/* WaDisableDynamicCreditSharing:kbl */
	if (FUNC0(i915, 0, KBL_REVID_B0))
		FUNC2(wal,
			    GAMT_CHKN_BIT_REG,
			    GAMT_CHKN_DISABLE_DYNAMIC_CREDIT_SHARING);

	/* WaDisableGafsUnitClkGating:kbl */
	FUNC2(wal,
		    GEN7_UCGCTL4,
		    GEN8_EU_GAUNIT_CLOCK_GATE_DISABLE);

	/* WaInPlaceDecompressionHang:kbl */
	FUNC2(wal,
		    GEN9_GAMT_ECO_REG_RW_IA,
		    GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);
}