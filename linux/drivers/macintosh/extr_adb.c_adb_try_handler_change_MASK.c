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
 int /*<<< orphan*/  adb_handler_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int FUNC3 (int,int) ; 

int
FUNC4(int address, int new_id)
{
	int ret;

	FUNC0(&adb_handler_mutex);
	ret = FUNC3(address, new_id);
	FUNC1(&adb_handler_mutex);
	if (ret)
		FUNC2("adb handler change: [%d] 0x%X\n", address, new_id);
	return ret;
}