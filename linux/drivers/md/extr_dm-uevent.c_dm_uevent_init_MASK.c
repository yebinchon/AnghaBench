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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _dm_event_cache ; 
 int /*<<< orphan*/  dm_uevent ; 

int FUNC2(void)
{
	_dm_event_cache = FUNC1(dm_uevent, 0);
	if (!_dm_event_cache)
		return -ENOMEM;

	FUNC0("version 1.0.3");

	return 0;
}