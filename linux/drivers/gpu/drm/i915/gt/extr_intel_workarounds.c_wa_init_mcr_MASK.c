#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sseu_dev_info {int slice_mask; int* subslice_mask; } ;
struct i915_wa_list {int dummy; } ;
struct drm_i915_private {int /*<<< orphan*/  uncore; } ;
struct TYPE_2__ {struct sseu_dev_info sseu; } ;

/* Variables and functions */
 unsigned int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int GEN10_L3BANK_MASK ; 
 int GEN10_L3BANK_PAIR_COUNT ; 
 int /*<<< orphan*/  GEN10_MIRROR_FUSE3 ; 
 int FUNC4 (unsigned int) ; 
 int GEN11_MCR_SLICE_MASK ; 
 int FUNC5 (unsigned int) ; 
 int GEN11_MCR_SUBSLICE_MASK ; 
 int /*<<< orphan*/  GEN8_MCR_SELECTOR ; 
 int FUNC6 (unsigned int) ; 
 int GEN8_MCR_SLICE_MASK ; 
 int FUNC7 (unsigned int) ; 
 int GEN8_MCR_SUBSLICE_MASK ; 
 int FUNC8 (struct drm_i915_private*) ; 
 TYPE_1__* FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct i915_wa_list*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC15(struct drm_i915_private *i915, struct i915_wa_list *wal)
{
	const struct sseu_dev_info *sseu = &FUNC9(i915)->sseu;
	unsigned int slice, subslice;
	u32 l3_en, mcr, mcr_mask;

	FUNC3(FUNC8(i915) < 10);

	/*
	 * WaProgramMgsrForL3BankSpecificMmioReads: cnl,icl
	 * L3Banks could be fused off in single slice scenario. If that is
	 * the case, we might need to program MCR select to a valid L3Bank
	 * by default, to make sure we correctly read certain registers
	 * later on (in the range 0xB100 - 0xB3FF).
	 *
	 * WaProgramMgsrForCorrectSliceSpecificMmioReads:cnl,icl
	 * Before any MMIO read into slice/subslice specific registers, MCR
	 * packet control register needs to be programmed to point to any
	 * enabled s/ss pair. Otherwise, incorrect values will be returned.
	 * This means each subsequent MMIO read will be forwarded to an
	 * specific s/ss combination, but this is OK since these registers
	 * are consistent across s/ss in almost all cases. In the rare
	 * occasions, such as INSTDONE, where this value is dependent
	 * on s/ss combo, the read should be done with read_subslice_reg.
	 *
	 * Since GEN8_MCR_SELECTOR contains dual-purpose bits which select both
	 * to which subslice, or to which L3 bank, the respective mmio reads
	 * will go, we have to find a common index which works for both
	 * accesses.
	 *
	 * Case where we cannot find a common index fortunately should not
	 * happen in production hardware, so we only emit a warning instead of
	 * implementing something more complex that requires checking the range
	 * of every MMIO read.
	 */

	if (FUNC8(i915) >= 10 && FUNC13(sseu->slice_mask)) {
		u32 l3_fuse =
			FUNC12(&i915->uncore, GEN10_MIRROR_FUSE3) &
			GEN10_L3BANK_MASK;

		FUNC1("L3 fuse = %x\n", l3_fuse);
		l3_en = ~(l3_fuse << GEN10_L3BANK_PAIR_COUNT | l3_fuse);
	} else {
		l3_en = ~0;
	}

	slice = FUNC11(sseu->slice_mask) - 1;
	FUNC3(slice >= FUNC0(sseu->subslice_mask));
	subslice = FUNC11(l3_en & sseu->subslice_mask[slice]);
	if (!subslice) {
		FUNC2("No common index found between subslice mask %x and L3 bank mask %x!\n",
			 sseu->subslice_mask[slice], l3_en);
		subslice = FUNC11(l3_en);
		FUNC10(!subslice);
	}
	subslice--;

	if (FUNC8(i915) >= 11) {
		mcr = FUNC4(slice) | FUNC5(subslice);
		mcr_mask = GEN11_MCR_SLICE_MASK | GEN11_MCR_SUBSLICE_MASK;
	} else {
		mcr = FUNC6(slice) | FUNC7(subslice);
		mcr_mask = GEN8_MCR_SLICE_MASK | GEN8_MCR_SUBSLICE_MASK;
	}

	FUNC1("MCR slice/subslice = %x\n", mcr);

	FUNC14(wal, GEN8_MCR_SELECTOR, mcr_mask, mcr);
}