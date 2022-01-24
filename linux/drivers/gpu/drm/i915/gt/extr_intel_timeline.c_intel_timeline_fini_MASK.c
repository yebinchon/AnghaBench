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
struct intel_timeline {TYPE_1__* hwsp_ggtt; scalar_t__ hwsp_cacheline; int /*<<< orphan*/  requests; int /*<<< orphan*/  pin_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct intel_timeline *timeline)
{
	FUNC0(FUNC1(&timeline->pin_count));
	FUNC0(!FUNC5(&timeline->requests));

	if (timeline->hwsp_cacheline)
		FUNC2(timeline->hwsp_cacheline);
	else
		FUNC3(timeline->hwsp_ggtt->obj);

	FUNC4(timeline->hwsp_ggtt);
}