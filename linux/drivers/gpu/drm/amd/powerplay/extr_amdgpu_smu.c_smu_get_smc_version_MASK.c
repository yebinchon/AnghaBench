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
typedef  int /*<<< orphan*/  uint32_t ;
struct smu_context {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SMU_MSG_GetDriverIfVersion ; 
 int /*<<< orphan*/  SMU_MSG_GetSmuVersion ; 
 int FUNC0 (struct smu_context*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct smu_context*,int /*<<< orphan*/ ) ; 

int FUNC2(struct smu_context *smu, uint32_t *if_version, uint32_t *smu_version)
{
	int ret = 0;

	if (!if_version && !smu_version)
		return -EINVAL;

	if (if_version) {
		ret = FUNC1(smu, SMU_MSG_GetDriverIfVersion);
		if (ret)
			return ret;

		ret = FUNC0(smu, if_version);
		if (ret)
			return ret;
	}

	if (smu_version) {
		ret = FUNC1(smu, SMU_MSG_GetSmuVersion);
		if (ret)
			return ret;

		ret = FUNC0(smu, smu_version);
		if (ret)
			return ret;
	}

	return ret;
}