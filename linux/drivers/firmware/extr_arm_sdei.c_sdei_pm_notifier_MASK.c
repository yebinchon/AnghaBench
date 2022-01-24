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
struct notifier_block {int dummy; } ;

/* Variables and functions */
#define  CPU_PM_ENTER 130 
#define  CPU_PM_ENTER_FAILED 129 
#define  CPU_PM_EXIT 128 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 int FUNC0 (int) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct notifier_block *nb, unsigned long action,
			    void *data)
{
	int rv;

	switch (action) {
	case CPU_PM_ENTER:
		rv = FUNC1();
		break;
	case CPU_PM_EXIT:
	case CPU_PM_ENTER_FAILED:
		rv = FUNC2();
		break;
	default:
		return NOTIFY_DONE;
	}

	if (rv)
		return FUNC0(rv);

	return NOTIFY_OK;
}