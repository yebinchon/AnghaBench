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
struct vc4_perfmon {unsigned int ncounters; int /*<<< orphan*/ * counters; } ;
struct vc4_dev {struct vc4_perfmon* active_perfmon; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  V3D_PCTRE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4(struct vc4_dev *vc4, struct vc4_perfmon *perfmon,
		      bool capture)
{
	unsigned int i;

	if (FUNC3(!vc4->active_perfmon ||
			 perfmon != vc4->active_perfmon))
		return;

	if (capture) {
		for (i = 0; i < perfmon->ncounters; i++)
			perfmon->counters[i] += FUNC1(FUNC0(i));
	}

	FUNC2(V3D_PCTRE, 0);
	vc4->active_perfmon = NULL;
}