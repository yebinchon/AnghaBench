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
struct smu_table_context {int /*<<< orphan*/ * overdrive_table; int /*<<< orphan*/ * max_sustainable_clocks; int /*<<< orphan*/ * driver_pptable; } ;
struct smu_context {struct smu_table_context smu_table; } ;
struct amdgpu_device {int flags; struct smu_context smu; } ;

/* Variables and functions */
 int AMD_IS_APU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct smu_context*) ; 
 int FUNC2 (struct smu_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct smu_context*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct smu_context*,int) ; 

__attribute__((used)) static int FUNC5(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	struct smu_context *smu = &adev->smu;
	struct smu_table_context *table_context = &smu->smu_table;
	int ret = 0;

	if (adev->flags & AMD_IS_APU) {
		FUNC3(&adev->smu, true);
		FUNC4(&adev->smu, true);
	}

	FUNC0(table_context->driver_pptable);
	table_context->driver_pptable = NULL;

	FUNC0(table_context->max_sustainable_clocks);
	table_context->max_sustainable_clocks = NULL;

	FUNC0(table_context->overdrive_table);
	table_context->overdrive_table = NULL;

	ret = FUNC1(smu);
	if (ret)
		return ret;

	ret = FUNC2(smu);
	if (ret)
		return ret;

	return 0;
}