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
struct intel_timeline_hwsp {unsigned long long free_bitmap; int /*<<< orphan*/  free_link; int /*<<< orphan*/  vma; struct intel_gt_timelines* gt_timelines; } ;
struct intel_gt_timelines {int /*<<< orphan*/  hwsp_lock; int /*<<< orphan*/  hwsp_free_list; } ;

/* Variables and functions */
 int FUNC0 (unsigned long long) ; 
 unsigned long long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_timeline_hwsp*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct intel_timeline_hwsp *hwsp, int cacheline)
{
	struct intel_gt_timelines *gt = hwsp->gt_timelines;
	unsigned long flags;

	FUNC7(&gt->hwsp_lock, flags);

	/* As a cacheline becomes available, publish the HWSP on the freelist */
	if (!hwsp->free_bitmap)
		FUNC5(&hwsp->free_link, &gt->hwsp_free_list);

	FUNC2(cacheline >= FUNC0(hwsp->free_bitmap));
	hwsp->free_bitmap |= FUNC1(cacheline);

	/* And if no one is left using it, give the page back to the system */
	if (hwsp->free_bitmap == ~0ull) {
		FUNC3(hwsp->vma);
		FUNC6(&hwsp->free_link);
		FUNC4(hwsp);
	}

	FUNC8(&gt->hwsp_lock, flags);
}