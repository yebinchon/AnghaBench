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
typedef  int /*<<< orphan*/  u16 ;
struct sseu_dev_info {int max_slices; int max_subslices; int /*<<< orphan*/ * subslice_mask; } ;
struct drm_printer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_printer*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sseu_dev_info const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sseu_dev_info const*,int,int) ; 

void FUNC4(const struct sseu_dev_info *sseu,
				     struct drm_printer *p)
{
	int s, ss;

	if (sseu->max_slices == 0) {
		FUNC0(p, "Unavailable\n");
		return;
	}

	for (s = 0; s < sseu->max_slices; s++) {
		FUNC0(p, "slice%d: %u subslice(s) (0x%hhx):\n",
			   s, FUNC2(sseu, s),
			   sseu->subslice_mask[s]);

		for (ss = 0; ss < sseu->max_subslices; ss++) {
			u16 enabled_eus = FUNC3(sseu, s, ss);

			FUNC0(p, "\tsubslice%d: %u EUs (0x%hx)\n",
				   ss, FUNC1(enabled_eus), enabled_eus);
		}
	}
}