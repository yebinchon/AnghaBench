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
struct smu_feature {int /*<<< orphan*/  mutex; int /*<<< orphan*/  feature_num; int /*<<< orphan*/  allowed; } ;
struct smu_context {int /*<<< orphan*/  pm_enabled; struct smu_feature smu_feature; } ;

/* Variables and functions */
 int SMU_FEATURE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct smu_context*,int /*<<< orphan*/ *,int) ; 

int FUNC5(struct smu_context *smu)
{
	struct smu_feature *feature = &smu->smu_feature;
	int ret = 0;
	uint32_t allowed_feature_mask[SMU_FEATURE_MAX/32];

	if (!smu->pm_enabled)
		return ret;
	FUNC2(&feature->mutex);
	FUNC1(feature->allowed, SMU_FEATURE_MAX);
	FUNC3(&feature->mutex);

	ret = FUNC4(smu, allowed_feature_mask,
					     SMU_FEATURE_MAX/32);
	if (ret)
		return ret;

	FUNC2(&feature->mutex);
	FUNC0(feature->allowed, feature->allowed,
		      (unsigned long *)allowed_feature_mask,
		      feature->feature_num);
	FUNC3(&feature->mutex);

	return ret;
}