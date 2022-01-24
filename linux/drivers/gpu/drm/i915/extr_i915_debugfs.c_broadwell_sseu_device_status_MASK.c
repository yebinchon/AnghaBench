#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct sseu_dev_info {int slice_mask; int eu_per_subslice; int eu_total; int /*<<< orphan*/ * subslice_mask; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int eu_per_subslice; int /*<<< orphan*/ * subslice_7eu; int /*<<< orphan*/ * subslice_mask; } ;
struct TYPE_4__ {TYPE_1__ sseu; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEN8_GT_SLICE_INFO ; 
 int GEN8_LSLICESTAT_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sseu_dev_info*) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv,
					 struct sseu_dev_info *sseu)
{
	u32 slice_info = FUNC0(GEN8_GT_SLICE_INFO);
	int s;

	sseu->slice_mask = slice_info & GEN8_LSLICESTAT_MASK;

	if (sseu->slice_mask) {
		sseu->eu_per_subslice =
			FUNC1(dev_priv)->sseu.eu_per_subslice;
		for (s = 0; s < FUNC2(sseu->slice_mask); s++) {
			sseu->subslice_mask[s] =
				FUNC1(dev_priv)->sseu.subslice_mask[s];
		}
		sseu->eu_total = sseu->eu_per_subslice *
				 FUNC4(sseu);

		/* subtract fused off EU(s) from enabled slice(s) */
		for (s = 0; s < FUNC2(sseu->slice_mask); s++) {
			u8 subslice_7eu =
				FUNC1(dev_priv)->sseu.subslice_7eu[s];

			sseu->eu_total -= FUNC3(subslice_7eu);
		}
	}
}