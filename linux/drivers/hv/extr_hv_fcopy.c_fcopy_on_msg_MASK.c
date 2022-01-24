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
struct TYPE_2__ {scalar_t__ state; int /*<<< orphan*/  recv_channel; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ HVUTIL_DEVICE_INIT ; 
 scalar_t__ HVUTIL_USERSPACE_RECV ; 
 scalar_t__ HVUTIL_USERSPACE_REQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  fcopy_poll_wrapper ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  fcopy_timeout_work ; 
 TYPE_1__ fcopy_transaction ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void *msg, int len)
{
	int *val = (int *)msg;

	if (len != sizeof(int))
		return -EINVAL;

	if (fcopy_transaction.state == HVUTIL_DEVICE_INIT)
		return FUNC1(*val);

	if (fcopy_transaction.state != HVUTIL_USERSPACE_REQ)
		return -EINVAL;

	/*
	 * Complete the transaction by forwarding the result
	 * to the host. But first, cancel the timeout.
	 */
	if (FUNC0(&fcopy_timeout_work)) {
		fcopy_transaction.state = HVUTIL_USERSPACE_RECV;
		FUNC2(*val);
		FUNC3(fcopy_transaction.recv_channel,
				fcopy_poll_wrapper);
	}

	return 0;
}