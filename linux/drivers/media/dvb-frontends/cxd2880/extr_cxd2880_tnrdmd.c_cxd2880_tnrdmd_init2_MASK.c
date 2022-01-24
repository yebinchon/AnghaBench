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
typedef  int /*<<< orphan*/  u8 ;
struct cxd2880_tnrdmd {scalar_t__ diver_mode; void* state; struct cxd2880_tnrdmd* diver_sub; } ;

/* Variables and functions */
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_MAIN ; 
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_SUB ; 
 void* CXD2880_TNRDMD_STATE_SLEEP ; 
 int EINVAL ; 
 int FUNC0 (struct cxd2880_tnrdmd*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct cxd2880_tnrdmd*) ; 
 int FUNC2 (struct cxd2880_tnrdmd*) ; 

int FUNC3(struct cxd2880_tnrdmd *tnr_dmd)
{
	u8 cpu_task_completed;
	int ret;

	if (!tnr_dmd)
		return -EINVAL;

	if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_SUB)
		return -EINVAL;

	ret = FUNC0(tnr_dmd,
						     &cpu_task_completed);
	if (ret)
		return ret;

	if (!cpu_task_completed)
		return -EINVAL;

	ret = FUNC2(tnr_dmd);
	if (ret)
		return ret;

	if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_MAIN) {
		ret = FUNC2(tnr_dmd->diver_sub);
		if (ret)
			return ret;
	}

	ret = FUNC1(tnr_dmd);
	if (ret)
		return ret;

	if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_MAIN) {
		ret = FUNC1(tnr_dmd->diver_sub);
		if (ret)
			return ret;
	}

	tnr_dmd->state = CXD2880_TNRDMD_STATE_SLEEP;

	if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_MAIN)
		tnr_dmd->diver_sub->state = CXD2880_TNRDMD_STATE_SLEEP;

	return ret;
}