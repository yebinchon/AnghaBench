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
struct intel_timeline {int dummy; } ;
struct intel_gt {int dummy; } ;
struct i915_vma {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct intel_timeline* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct intel_timeline*,struct intel_gt*,struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_timeline*) ; 
 struct intel_timeline* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct intel_timeline *
FUNC4(struct intel_gt *gt, struct i915_vma *global_hwsp)
{
	struct intel_timeline *timeline;
	int err;

	timeline = FUNC3(sizeof(*timeline), GFP_KERNEL);
	if (!timeline)
		return FUNC0(-ENOMEM);

	err = FUNC1(timeline, gt, global_hwsp);
	if (err) {
		FUNC2(timeline);
		return FUNC0(err);
	}

	return timeline;
}