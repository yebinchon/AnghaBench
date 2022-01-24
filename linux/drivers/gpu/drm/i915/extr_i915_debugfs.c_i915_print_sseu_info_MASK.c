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
struct sseu_dev_info {scalar_t__ has_eu_pg; scalar_t__ has_subslice_pg; scalar_t__ has_slice_pg; int /*<<< orphan*/  min_eu_in_pool; int /*<<< orphan*/  eu_per_subslice; int /*<<< orphan*/  eu_total; int /*<<< orphan*/  slice_mask; } ;
struct seq_file {int /*<<< orphan*/  private; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sseu_dev_info const*) ; 
 int /*<<< orphan*/  FUNC4 (struct sseu_dev_info const*,int) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct seq_file *m, bool is_available_info,
				 const struct sseu_dev_info *sseu)
{
	struct drm_i915_private *dev_priv = FUNC5(m->private);
	const char *type = is_available_info ? "Available" : "Enabled";
	int s;

	FUNC6(m, "  %s Slice Mask: %04x\n", type,
		   sseu->slice_mask);
	FUNC6(m, "  %s Slice Total: %u\n", type,
		   FUNC2(sseu->slice_mask));
	FUNC6(m, "  %s Subslice Total: %u\n", type,
		   FUNC3(sseu));
	for (s = 0; s < FUNC1(sseu->slice_mask); s++) {
		FUNC6(m, "  %s Slice%i subslices: %u\n", type,
			   s, FUNC4(sseu, s));
	}
	FUNC6(m, "  %s EU Total: %u\n", type,
		   sseu->eu_total);
	FUNC6(m, "  %s EU Per Subslice: %u\n", type,
		   sseu->eu_per_subslice);

	if (!is_available_info)
		return;

	FUNC6(m, "  Has Pooled EU: %s\n", FUNC7(FUNC0(dev_priv)));
	if (FUNC0(dev_priv))
		FUNC6(m, "  Min EU in pool: %u\n", sseu->min_eu_in_pool);

	FUNC6(m, "  Has Slice Power Gating: %s\n",
		   FUNC7(sseu->has_slice_pg));
	FUNC6(m, "  Has Subslice Power Gating: %s\n",
		   FUNC7(sseu->has_subslice_pg));
	FUNC6(m, "  Has EU Power Gating: %s\n",
		   FUNC7(sseu->has_eu_pg));
}