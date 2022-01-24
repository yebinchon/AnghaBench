#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hv_util_service {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  adj_time_work ; 
 TYPE_1__ host_ts ; 
 int /*<<< orphan*/ * hv_ptp_clock ; 
 int /*<<< orphan*/  hv_set_host_time ; 
 int /*<<< orphan*/  hyperv_cs ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ptp_hyperv_info ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hv_util_service *srv)
{
	/* TimeSync requires Hyper-V clocksource. */
	if (!hyperv_cs)
		return -ENODEV;

	FUNC5(&host_ts.lock);

	FUNC0(&adj_time_work, hv_set_host_time);

	/*
	 * ptp_clock_register() returns NULL when CONFIG_PTP_1588_CLOCK is
	 * disabled but the driver is still useful without the PTP device
	 * as it still handles the ICTIMESYNCFLAG_SYNC case.
	 */
	hv_ptp_clock = FUNC4(&ptp_hyperv_info, NULL);
	if (FUNC1(hv_ptp_clock)) {
		FUNC3("cannot register PTP clock: %ld\n",
		       FUNC2(hv_ptp_clock));
		hv_ptp_clock = NULL;
	}

	return 0;
}