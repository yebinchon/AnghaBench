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
 int CGPSF_CLKGATE_DIS ; 
 int /*<<< orphan*/  GAMT_CHKN_BIT_REG ; 
 int GAMT_CHKN_DISABLE_L3_COH_PIPE ; 
 int GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS ; 
 int GAMW_ECO_DEV_CTX_RELOAD_DISABLE ; 
 int /*<<< orphan*/  GEN11_GACB_PERF_CTRL ; 
 int GEN11_HASH_CTRL_BIT0 ; 
 int GEN11_HASH_CTRL_BIT4 ; 
 int /*<<< orphan*/  GEN11_HASH_CTRL_MASK ; 
 int /*<<< orphan*/  GEN11_LSN_UNSLCVC ; 
 int GEN11_LSN_UNSLCVC_GAFS_HALF_CL2_MAXALLOC ; 
 int GEN11_LSN_UNSLCVC_GAFS_HALF_SF_MAXALLOC ; 
 int /*<<< orphan*/  GEN8_GAMW_ECO_DEV_RW_IA ; 
 int /*<<< orphan*/  GEN9_GAMT_ECO_REG_RW_IA ; 
 int GWUNIT_CLKGATE_DIS ; 
 int /*<<< orphan*/  ICL_REVID_A0 ; 
 int /*<<< orphan*/  ICL_REVID_B0 ; 
 int /*<<< orphan*/  INF_UNIT_LEVEL_CLKGATE ; 
 scalar_t__ FUNC0 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MSCUNIT_CLKGATE_DIS ; 
 int /*<<< orphan*/  SLICE_UNIT_LEVEL_CLKGATE ; 
 int /*<<< orphan*/  SUBSLICE_UNIT_LEVEL_CLKGATE ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,struct i915_wa_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_wa_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_wa_list*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct drm_i915_private *i915, struct i915_wa_list *wal)
{
	FUNC1(i915, wal);

	/* WaInPlaceDecompressionHang:icl */
	FUNC3(wal,
		    GEN9_GAMT_ECO_REG_RW_IA,
		    GAMT_ECO_ENABLE_IN_PLACE_DECOMPRESS);

	/* WaModifyGamTlbPartitioning:icl */
	FUNC2(wal,
			   GEN11_GACB_PERF_CTRL,
			   GEN11_HASH_CTRL_MASK,
			   GEN11_HASH_CTRL_BIT0 | GEN11_HASH_CTRL_BIT4);

	/* Wa_1405766107:icl
	 * Formerly known as WaCL2SFHalfMaxAlloc
	 */
	FUNC3(wal,
		    GEN11_LSN_UNSLCVC,
		    GEN11_LSN_UNSLCVC_GAFS_HALF_SF_MAXALLOC |
		    GEN11_LSN_UNSLCVC_GAFS_HALF_CL2_MAXALLOC);

	/* Wa_220166154:icl
	 * Formerly known as WaDisCtxReload
	 */
	FUNC3(wal,
		    GEN8_GAMW_ECO_DEV_RW_IA,
		    GAMW_ECO_DEV_CTX_RELOAD_DISABLE);

	/* Wa_1405779004:icl (pre-prod) */
	if (FUNC0(i915, ICL_REVID_A0, ICL_REVID_A0))
		FUNC3(wal,
			    SLICE_UNIT_LEVEL_CLKGATE,
			    MSCUNIT_CLKGATE_DIS);

	/* Wa_1406680159:icl */
	FUNC3(wal,
		    SUBSLICE_UNIT_LEVEL_CLKGATE,
		    GWUNIT_CLKGATE_DIS);

	/* Wa_1406838659:icl (pre-prod) */
	if (FUNC0(i915, ICL_REVID_A0, ICL_REVID_B0))
		FUNC3(wal,
			    INF_UNIT_LEVEL_CLKGATE,
			    CGPSF_CLKGATE_DIS);

	/* Wa_1406463099:icl
	 * Formerly known as WaGamTlbPendError
	 */
	FUNC3(wal,
		    GAMT_CHKN_BIT_REG,
		    GAMT_CHKN_DISABLE_L3_COH_PIPE);
}