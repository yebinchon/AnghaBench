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
struct dpu_core_perf {int /*<<< orphan*/ * dev; int /*<<< orphan*/ * catalog; int /*<<< orphan*/ * core_clk; scalar_t__ max_core_clk_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

void FUNC1(struct dpu_core_perf *perf)
{
	if (!perf) {
		FUNC0("invalid parameters\n");
		return;
	}

	perf->max_core_clk_rate = 0;
	perf->core_clk = NULL;
	perf->catalog = NULL;
	perf->dev = NULL;
}