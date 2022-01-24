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
typedef  int /*<<< orphan*/  uint8_t ;
struct gma_encoder {struct cdv_intel_dp* dev_priv; } ;
struct cdv_intel_dp {int lane_count; int /*<<< orphan*/ * train_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_TRAINING_LANE0_SET ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct gma_encoder*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool
FUNC2(struct gma_encoder *encoder,
			uint8_t dp_train_pat)
{
	
	int ret;
	struct cdv_intel_dp *intel_dp = encoder->dev_priv;

	ret = FUNC1(encoder,
					DP_TRAINING_LANE0_SET,
					intel_dp->train_set,
					intel_dp->lane_count);

	if (ret != intel_dp->lane_count) {
		FUNC0("Failure in setting level %d, lane_cnt= %d\n",
				intel_dp->train_set[0], intel_dp->lane_count);
		return false;
	}
	return true;
}