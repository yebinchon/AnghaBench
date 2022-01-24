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
struct intel_dp {int lane_count; int /*<<< orphan*/  train_set; int /*<<< orphan*/  aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_TRAINING_LANE0_SET ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_dp*) ; 

__attribute__((used)) static bool
FUNC2(struct intel_dp *intel_dp)
{
	int ret;

	FUNC1(intel_dp);

	ret = FUNC0(&intel_dp->aux, DP_TRAINING_LANE0_SET,
				intel_dp->train_set, intel_dp->lane_count);

	return ret == intel_dp->lane_count;
}