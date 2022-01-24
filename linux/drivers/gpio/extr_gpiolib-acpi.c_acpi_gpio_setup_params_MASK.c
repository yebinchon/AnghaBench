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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int run_edge_events_on_boot ; 
 int /*<<< orphan*/  run_edge_events_on_boot_blacklist ; 

__attribute__((used)) static int FUNC1(void)
{
	if (run_edge_events_on_boot < 0) {
		if (FUNC0(run_edge_events_on_boot_blacklist))
			run_edge_events_on_boot = 0;
		else
			run_edge_events_on_boot = 1;
	}

	return 0;
}