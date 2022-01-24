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
struct intel_timeline {int /*<<< orphan*/  hwsp_ggtt; int /*<<< orphan*/  hwsp_cacheline; int /*<<< orphan*/  pin_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct intel_timeline *tl)
{
	FUNC0(!FUNC3(&tl->pin_count));
	if (!FUNC2(&tl->pin_count))
		return;

	FUNC4(tl->hwsp_cacheline);

	FUNC1(tl->hwsp_ggtt);
}