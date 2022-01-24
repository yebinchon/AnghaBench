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
 int /*<<< orphan*/  CNL_REVID_B0 ; 
 int /*<<< orphan*/  GAMT_CHKN_BIT_REG ; 
 int /*<<< orphan*/  GAMT_CHKN_DISABLE_I2M_CYCLE_ON_WR_PORT ; 
 int /*<<< orphan*/  GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS ; 
 int /*<<< orphan*/  GEN9_GAMT_ECO_REG_RW_IA ; 
 scalar_t__ FUNC0 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_wa_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct drm_i915_private *i915, struct i915_wa_list *wal)
{
	FUNC1(i915, wal);

	/* WaDisableI2mCycleOnWRPort:cnl (pre-prod) */
	if (FUNC0(i915, CNL_REVID_B0, CNL_REVID_B0))
		FUNC2(wal,
			    GAMT_CHKN_BIT_REG,
			    GAMT_CHKN_DISABLE_I2M_CYCLE_ON_WR_PORT);

	/* WaInPlaceDecompressionHang:cnl */
	FUNC2(wal,
		    GEN9_GAMT_ECO_REG_RW_IA,
		    GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);
}