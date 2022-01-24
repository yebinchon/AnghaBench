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
struct smu_context {int /*<<< orphan*/  mutex; } ;
struct amdgpu_device {struct smu_context smu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct smu_context*,int) ; 
 int FUNC4 (struct smu_context*) ; 

__attribute__((used)) static int FUNC5(void *handle)
{
	int ret;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	struct smu_context *smu = &adev->smu;

	FUNC2("SMU is resuming...\n");

	FUNC0(&smu->mutex);

	ret = FUNC3(smu, false);
	if (ret)
		goto failed;

	ret = FUNC4(smu);
	if (ret)
		goto failed;

	FUNC1(&smu->mutex);

	FUNC2("SMU is resumed successfully!\n");

	return 0;
failed:
	FUNC1(&smu->mutex);
	return ret;
}