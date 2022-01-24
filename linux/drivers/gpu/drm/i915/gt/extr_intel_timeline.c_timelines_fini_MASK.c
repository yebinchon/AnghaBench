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
struct intel_gt_timelines {int /*<<< orphan*/  hwsp_free_list; int /*<<< orphan*/  active_list; } ;
struct intel_gt {struct intel_gt_timelines timelines; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct intel_gt *gt)
{
	struct intel_gt_timelines *timelines = &gt->timelines;

	FUNC0(!FUNC1(&timelines->active_list));
	FUNC0(!FUNC1(&timelines->hwsp_free_list));
}