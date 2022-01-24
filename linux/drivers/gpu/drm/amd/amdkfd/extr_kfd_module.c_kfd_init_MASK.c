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
 int EINVAL ; 
 int KFD_MAX_NUM_OF_QUEUES_PER_DEVICE ; 
 scalar_t__ KFD_SCHED_POLICY_HWS ; 
 scalar_t__ KFD_SCHED_POLICY_NO_HWS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int max_num_of_queues_per_device ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ sched_policy ; 

__attribute__((used)) static int FUNC8(void)
{
	int err;

	/* Verify module parameters */
	if ((sched_policy < KFD_SCHED_POLICY_HWS) ||
		(sched_policy > KFD_SCHED_POLICY_NO_HWS)) {
		FUNC7("sched_policy has invalid value\n");
		return -EINVAL;
	}

	/* Verify module parameters */
	if ((max_num_of_queues_per_device < 1) ||
		(max_num_of_queues_per_device >
			KFD_MAX_NUM_OF_QUEUES_PER_DEVICE)) {
		FUNC7("max_num_of_queues_per_device must be between 1 to KFD_MAX_NUM_OF_QUEUES_PER_DEVICE\n");
		return -EINVAL;
	}

	err = FUNC1();
	if (err < 0)
		goto err_ioctl;

	err = FUNC5();
	if (err < 0)
		goto err_topology;

	err = FUNC3();
	if (err < 0)
		goto err_create_wq;

	/* Ignore the return value, so that we can continue
	 * to init the KFD, even if procfs isn't craated
	 */
	FUNC4();

	FUNC2();

	return 0;

err_create_wq:
	FUNC6();
err_topology:
	FUNC0();
err_ioctl:
	return err;
}