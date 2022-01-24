#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct ghes {TYPE_2__* generic; } ;
struct TYPE_3__ {int /*<<< orphan*/  vector; } ;
struct TYPE_4__ {TYPE_1__ notify; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ACPI_APEI_GHES ; 
 int EINPROGRESS ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct ghes *ghes)
{
	int i;
	int err;
	u32 event_num = ghes->generic->notify.vector;

	FUNC1();

	if (!FUNC0(CONFIG_ACPI_APEI_GHES))
		return -EOPNOTSUPP;

	/*
	 * The event may be running on another CPU. Disable it
	 * to stop new events, then try to unregister a few times.
	 */
	err = FUNC3(event_num);
	if (err)
		return err;

	for (i = 0; i < 3; i++) {
		err = FUNC4(event_num);
		if (err != -EINPROGRESS)
			break;

		FUNC2();
	}

	return err;
}