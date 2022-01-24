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
struct sseu_dev_info {int max_slices; int /*<<< orphan*/  has_eu_pg; int /*<<< orphan*/  has_subslice_pg; int /*<<< orphan*/  has_slice_pg; int /*<<< orphan*/  eu_per_subslice; int /*<<< orphan*/  eu_total; int /*<<< orphan*/ * subslice_mask; int /*<<< orphan*/  slice_mask; } ;
struct drm_printer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_printer*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sseu_dev_info const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sseu_dev_info const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const struct sseu_dev_info *sseu, struct drm_printer *p)
{
	int s;

	FUNC0(p, "slice total: %u, mask=%04x\n",
		   FUNC1(sseu->slice_mask), sseu->slice_mask);
	FUNC0(p, "subslice total: %u\n", FUNC2(sseu));
	for (s = 0; s < sseu->max_slices; s++) {
		FUNC0(p, "slice%d: %u subslices, mask=%04x\n",
			   s, FUNC3(sseu, s),
			   sseu->subslice_mask[s]);
	}
	FUNC0(p, "EU total: %u\n", sseu->eu_total);
	FUNC0(p, "EU per subslice: %u\n", sseu->eu_per_subslice);
	FUNC0(p, "has slice power gating: %s\n",
		   FUNC4(sseu->has_slice_pg));
	FUNC0(p, "has subslice power gating: %s\n",
		   FUNC4(sseu->has_subslice_pg));
	FUNC0(p, "has EU power gating: %s\n", FUNC4(sseu->has_eu_pg));
}