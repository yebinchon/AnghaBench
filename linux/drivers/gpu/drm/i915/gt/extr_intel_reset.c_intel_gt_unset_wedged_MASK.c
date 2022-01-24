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
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct intel_gt {TYPE_1__ reset; } ;

/* Variables and functions */
 int FUNC0 (struct intel_gt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(struct intel_gt *gt)
{
	bool result;

	FUNC1(&gt->reset.mutex);
	result = FUNC0(gt);
	FUNC2(&gt->reset.mutex);

	return result;
}