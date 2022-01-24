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
struct smu_feature {int feature_num; int /*<<< orphan*/  mutex; int /*<<< orphan*/  supported; } ;
struct smu_context {struct smu_feature smu_feature; } ;
typedef  enum smu_feature_mask { ____Placeholder_smu_feature_mask } smu_feature_mask ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct smu_context*,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 

int FUNC5(struct smu_context *smu, enum smu_feature_mask mask)
{
	struct smu_feature *feature = &smu->smu_feature;
	int feature_id;
	int ret = 0;

	feature_id = FUNC3(smu, mask);
	if (feature_id < 0)
		return 0;

	FUNC0(feature_id > feature->feature_num);

	FUNC1(&feature->mutex);
	ret = FUNC4(feature_id, feature->supported);
	FUNC2(&feature->mutex);

	return ret;
}