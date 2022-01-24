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
struct TYPE_2__ {int /*<<< orphan*/  dpm_level; } ;
struct smu_context {int /*<<< orphan*/  mutex; TYPE_1__ smu_dpm; int /*<<< orphan*/  pm_enabled; } ;
struct amdgpu_device {struct smu_context smu; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_PP_TASK_COMPLETE_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct smu_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	struct smu_context *smu = &adev->smu;

	if (!smu->pm_enabled)
		return 0;

	FUNC0(&smu->mutex);
	FUNC2(&adev->smu,
			smu->smu_dpm.dpm_level,
			AMD_PP_TASK_COMPLETE_INIT);
	FUNC1(&smu->mutex);

	return 0;
}