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
struct amdgpu_device {int dummy; } ;
typedef  enum idh_event { ____Placeholder_idh_event } idh_event ;

/* Variables and functions */
 int AI_MAILBOX_POLL_MSG_TIMEDOUT ; 
 int ETIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int FUNC2 (struct amdgpu_device*,int) ; 

__attribute__((used)) static int FUNC3(struct amdgpu_device *adev, enum idh_event event)
{
	int r, timeout = AI_MAILBOX_POLL_MSG_TIMEDOUT;

	do {
		r = FUNC2(adev, event);
		if (!r)
			return 0;

		FUNC0(10);
		timeout -= 10;
	} while (timeout > 1);

	FUNC1("Doesn't get msg:%d from pf, error=%d\n", event, r);

	return -ETIME;
}