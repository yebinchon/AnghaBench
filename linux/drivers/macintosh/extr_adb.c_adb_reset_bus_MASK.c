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
 scalar_t__ __adb_probe_sync ; 
 int /*<<< orphan*/  adb_probe_mutex ; 
 int /*<<< orphan*/  adb_reset_work ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(void)
{
	if (__adb_probe_sync) {
		FUNC0();
		return 0;
	}

	FUNC1(&adb_probe_mutex);
	FUNC2(&adb_reset_work);
	return 0;
}