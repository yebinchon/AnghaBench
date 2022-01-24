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
typedef  int u8 ;
typedef  scalar_t__ u16 ;
struct cxd2880_tnrdmd {scalar_t__ diver_mode; } ;

/* Variables and functions */
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_SINGLE ; 
 scalar_t__ CXD2880_TNRDMD_DIVERMODE_SUB ; 
 int EINVAL ; 
 int FUNC0 (struct cxd2880_tnrdmd*,scalar_t__*) ; 
 int FUNC1 (struct cxd2880_tnrdmd*,scalar_t__*) ; 

int FUNC2(struct cxd2880_tnrdmd
					     *tnr_dmd,
					     u8 *task_completed)
{
	u16 cpu_status = 0;
	int ret;

	if (!tnr_dmd || !task_completed)
		return -EINVAL;

	if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_SUB)
		return -EINVAL;

	ret = FUNC0(tnr_dmd, &cpu_status);
	if (ret)
		return ret;

	if (tnr_dmd->diver_mode == CXD2880_TNRDMD_DIVERMODE_SINGLE) {
		if (cpu_status == 0)
			*task_completed = 1;
		else
			*task_completed = 0;

		return ret;
	}
	if (cpu_status != 0) {
		*task_completed = 0;
		return ret;
	}

	ret = FUNC1(tnr_dmd, &cpu_status);
	if (ret)
		return ret;

	if (cpu_status == 0)
		*task_completed = 1;
	else
		*task_completed = 0;

	return ret;
}