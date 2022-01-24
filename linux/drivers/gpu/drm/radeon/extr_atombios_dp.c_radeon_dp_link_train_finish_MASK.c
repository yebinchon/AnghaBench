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
struct radeon_dp_link_train_info {int /*<<< orphan*/  enc_id; int /*<<< orphan*/  dp_clock; int /*<<< orphan*/  rdev; int /*<<< orphan*/  encoder; int /*<<< orphan*/  use_dpencoder; int /*<<< orphan*/  aux; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATOM_DP_ACTION_TRAINING_COMPLETE ; 
 int /*<<< orphan*/  ATOM_ENCODER_CMD_DP_LINK_TRAINING_COMPLETE ; 
 int /*<<< orphan*/  DP_TRAINING_PATTERN_DISABLE ; 
 int /*<<< orphan*/  DP_TRAINING_PATTERN_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct radeon_dp_link_train_info *dp_info)
{
	FUNC4(400);

	/* disable the training pattern on the sink */
	FUNC2(dp_info->aux,
			   DP_TRAINING_PATTERN_SET,
			   DP_TRAINING_PATTERN_DISABLE);

	/* disable the training pattern on the source */
	if (FUNC0(dp_info->rdev) || !dp_info->use_dpencoder)
		FUNC1(dp_info->encoder,
					   ATOM_ENCODER_CMD_DP_LINK_TRAINING_COMPLETE, 0);
	else
		FUNC3(dp_info->rdev, ATOM_DP_ACTION_TRAINING_COMPLETE,
					  dp_info->dp_clock, dp_info->enc_id, 0);

	return 0;
}