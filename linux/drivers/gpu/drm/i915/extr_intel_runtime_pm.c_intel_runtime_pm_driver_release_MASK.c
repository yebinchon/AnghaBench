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
struct intel_runtime_pm {int /*<<< orphan*/  wakeref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_runtime_pm*) ; 

void FUNC5(struct intel_runtime_pm *rpm)
{
	int count = FUNC1(&rpm->wakeref_count);

	FUNC0(count,
	     "i915 raw-wakerefs=%d wakelocks=%d on cleanup\n",
	     FUNC2(count),
	     FUNC3(count));

	FUNC4(rpm);
}