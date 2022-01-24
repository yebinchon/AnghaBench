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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct intel_dp {int /*<<< orphan*/  lane_count; int /*<<< orphan*/  dpcd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_LINK_SCRAMBLING_DISABLE ; 
 int DP_LINK_STATUS_SIZE ; 
 int /*<<< orphan*/  DP_TRAINING_PATTERN_4 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_dp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_dp*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC12(struct intel_dp *intel_dp)
{
	int tries;
	u32 training_pattern;
	u8 link_status[DP_LINK_STATUS_SIZE];
	bool channel_eq = false;

	training_pattern = FUNC9(intel_dp);
	/* Scrambling is disabled for TPS2/3 and enabled for TPS4 */
	if (training_pattern != DP_TRAINING_PATTERN_4)
		training_pattern |= DP_LINK_SCRAMBLING_DISABLE;

	/* channel equalization */
	if (!FUNC8(intel_dp,
				     training_pattern)) {
		FUNC1("failed to start channel equalization\n");
		return false;
	}

	for (tries = 0; tries < 5; tries++) {

		FUNC4(intel_dp->dpcd);
		if (!FUNC6(intel_dp, link_status)) {
			FUNC1("failed to get link status\n");
			break;
		}

		/* Make sure clock is still ok */
		if (!FUNC3(link_status,
					      intel_dp->lane_count)) {
			FUNC5(link_status);
			FUNC0("Clock recovery check failed, cannot "
				      "continue channel equalization\n");
			break;
		}

		if (FUNC2(link_status,
					 intel_dp->lane_count)) {
			channel_eq = true;
			FUNC0("Channel EQ done. DP Training "
				      "successful\n");
			break;
		}

		/* Update training set as requested by target */
		FUNC11(intel_dp, link_status);
		if (!FUNC10(intel_dp)) {
			FUNC1("failed to update link training\n");
			break;
		}
	}

	/* Try 5 times, else fail and try at lower BW */
	if (tries == 5) {
		FUNC5(link_status);
		FUNC0("Channel equalization failed 5 times\n");
	}

	FUNC7(intel_dp);

	return channel_eq;

}