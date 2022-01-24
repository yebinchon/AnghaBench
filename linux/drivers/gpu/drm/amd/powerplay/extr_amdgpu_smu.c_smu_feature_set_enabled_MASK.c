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
typedef  unsigned long long uint64_t ;
struct smu_feature {int feature_num; int /*<<< orphan*/  mutex; int /*<<< orphan*/  enabled; } ;
struct smu_context {struct smu_feature smu_feature; } ;
typedef  enum smu_feature_mask { ____Placeholder_smu_feature_mask } smu_feature_mask ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct smu_context*,int) ; 
 int FUNC4 (struct smu_context*,unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

int FUNC7(struct smu_context *smu, enum smu_feature_mask mask,
			    bool enable)
{
	struct smu_feature *feature = &smu->smu_feature;
	int feature_id;
	uint64_t feature_mask = 0;
	int ret = 0;

	feature_id = FUNC3(smu, mask);
	if (feature_id < 0)
		return -EINVAL;

	FUNC0(feature_id > feature->feature_num);

	feature_mask = 1ULL << feature_id;

	FUNC1(&feature->mutex);
	ret = FUNC4(smu, feature_mask, enable);
	if (ret)
		goto failed;

	if (enable)
		FUNC6(feature_id, feature->enabled);
	else
		FUNC5(feature_id, feature->enabled);

failed:
	FUNC2(&feature->mutex);

	return ret;
}