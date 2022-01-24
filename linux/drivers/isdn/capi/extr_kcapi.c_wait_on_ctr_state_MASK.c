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
struct capi_ctr {unsigned int state; int /*<<< orphan*/  state_wait_queue; } ;

/* Variables and functions */
 unsigned int CAPI_CTR_DETACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINTR ; 
 int ESRCH ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  capi_controller_lock ; 
 struct capi_ctr* FUNC1 (struct capi_ctr*) ; 
 int /*<<< orphan*/  FUNC2 (struct capi_ctr*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC9(struct capi_ctr *ctr, unsigned int state)
{
	FUNC0(wait);
	int retval = 0;

	ctr = FUNC1(ctr);
	if (!ctr)
		return -ESRCH;

	for (;;) {
		FUNC6(&ctr->state_wait_queue, &wait,
				TASK_INTERRUPTIBLE);

		if (ctr->state == state)
			break;
		if (ctr->state == CAPI_CTR_DETACHED) {
			retval = -ESRCH;
			break;
		}
		if (FUNC8(current)) {
			retval = -EINTR;
			break;
		}

		FUNC5(&capi_controller_lock);
		FUNC7();
		FUNC4(&capi_controller_lock);
	}
	FUNC3(&ctr->state_wait_queue, &wait);

	FUNC2(ctr);

	return retval;
}