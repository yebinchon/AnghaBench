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
typedef  int u8 ;
typedef  int u32 ;
struct sseu_dev_info {int max_slices; int max_subslices; int max_eus_per_subslice; int eu_total; int eu_per_subslice; int has_subslice_pg; int has_eu_pg; scalar_t__ has_slice_pg; int /*<<< orphan*/ * subslice_mask; int /*<<< orphan*/  slice_mask; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {struct sseu_dev_info sseu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CHV_FGT_DISABLE_SS0 ; 
 int CHV_FGT_DISABLE_SS1 ; 
 int CHV_FGT_EU_DIS_SS0_R0_MASK ; 
 int CHV_FGT_EU_DIS_SS0_R0_SHIFT ; 
 int CHV_FGT_EU_DIS_SS0_R1_MASK ; 
 int CHV_FGT_EU_DIS_SS0_R1_SHIFT ; 
 int CHV_FGT_EU_DIS_SS1_R0_MASK ; 
 int CHV_FGT_EU_DIS_SS1_R0_SHIFT ; 
 int CHV_FGT_EU_DIS_SS1_R1_MASK ; 
 int CHV_FGT_EU_DIS_SS1_R1_SHIFT ; 
 int /*<<< orphan*/  CHV_FUSE_GT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct drm_i915_private*) ; 
 int FUNC3 (struct sseu_dev_info*) ; 
 int FUNC4 (struct sseu_dev_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct sseu_dev_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv)
{
	struct sseu_dev_info *sseu = &FUNC2(dev_priv)->sseu;
	u32 fuse;

	fuse = FUNC1(CHV_FUSE_GT);

	sseu->slice_mask = FUNC0(0);
	sseu->max_slices = 1;
	sseu->max_subslices = 2;
	sseu->max_eus_per_subslice = 8;

	if (!(fuse & CHV_FGT_DISABLE_SS0)) {
		u8 disabled_mask =
			((fuse & CHV_FGT_EU_DIS_SS0_R0_MASK) >>
			 CHV_FGT_EU_DIS_SS0_R0_SHIFT) |
			(((fuse & CHV_FGT_EU_DIS_SS0_R1_MASK) >>
			  CHV_FGT_EU_DIS_SS0_R1_SHIFT) << 4);

		sseu->subslice_mask[0] |= FUNC0(0);
		FUNC5(sseu, 0, 0, ~disabled_mask);
	}

	if (!(fuse & CHV_FGT_DISABLE_SS1)) {
		u8 disabled_mask =
			((fuse & CHV_FGT_EU_DIS_SS1_R0_MASK) >>
			 CHV_FGT_EU_DIS_SS1_R0_SHIFT) |
			(((fuse & CHV_FGT_EU_DIS_SS1_R1_MASK) >>
			  CHV_FGT_EU_DIS_SS1_R1_SHIFT) << 4);

		sseu->subslice_mask[0] |= FUNC0(1);
		FUNC5(sseu, 0, 1, ~disabled_mask);
	}

	sseu->eu_total = FUNC3(sseu);

	/*
	 * CHV expected to always have a uniform distribution of EU
	 * across subslices.
	*/
	sseu->eu_per_subslice = FUNC4(sseu) ?
				sseu->eu_total /
					FUNC4(sseu) :
				0;
	/*
	 * CHV supports subslice power gating on devices with more than
	 * one subslice, and supports EU power gating on devices with
	 * more than one EU pair per subslice.
	*/
	sseu->has_slice_pg = 0;
	sseu->has_subslice_pg = FUNC4(sseu) > 1;
	sseu->has_eu_pg = (sseu->eu_per_subslice > 2);
}