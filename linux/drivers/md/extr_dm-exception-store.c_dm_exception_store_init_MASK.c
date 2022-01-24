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
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 

int FUNC4(void)
{
	int r;

	r = FUNC3();
	if (r) {
		FUNC0("Unable to register transient exception store type.");
		goto transient_fail;
	}

	r = FUNC1();
	if (r) {
		FUNC0("Unable to register persistent exception store type");
		goto persistent_fail;
	}

	return 0;

persistent_fail:
	FUNC2();
transient_fail:
	return r;
}