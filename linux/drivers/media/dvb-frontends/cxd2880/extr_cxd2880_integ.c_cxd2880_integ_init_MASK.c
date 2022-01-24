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
typedef  scalar_t__ u8 ;
struct cxd2880_tnrdmd {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 scalar_t__ CXD2880_TNRDMD_WAIT_INIT_INTVL ; 
 scalar_t__ CXD2880_TNRDMD_WAIT_INIT_TIMEOUT ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int FUNC0 (struct cxd2880_tnrdmd*,scalar_t__*) ; 
 int FUNC1 (struct cxd2880_tnrdmd*) ; 
 int FUNC2 (struct cxd2880_tnrdmd*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 

int FUNC7(struct cxd2880_tnrdmd *tnr_dmd)
{
	int ret;
	ktime_t start;
	u8 cpu_task_completed = 0;

	if (!tnr_dmd)
		return -EINVAL;

	ret = FUNC1(tnr_dmd);
	if (ret)
		return ret;

	start = FUNC3();

	while (1) {
		ret =
		    FUNC0(tnr_dmd,
						     &cpu_task_completed);
		if (ret)
			return ret;

		if (cpu_task_completed)
			break;

		if (FUNC5(FUNC4(FUNC3(), start)) >
					CXD2880_TNRDMD_WAIT_INIT_TIMEOUT)
			return -ETIMEDOUT;

		FUNC6(CXD2880_TNRDMD_WAIT_INIT_INTVL,
			     CXD2880_TNRDMD_WAIT_INIT_INTVL + 1000);
	}

	return FUNC2(tnr_dmd);
}