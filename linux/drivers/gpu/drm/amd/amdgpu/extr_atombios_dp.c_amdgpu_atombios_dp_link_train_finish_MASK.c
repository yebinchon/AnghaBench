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
struct amdgpu_atombios_dp_link_train_info {int /*<<< orphan*/  encoder; int /*<<< orphan*/  aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATOM_ENCODER_CMD_DP_LINK_TRAINING_COMPLETE ; 
 int /*<<< orphan*/  DP_TRAINING_PATTERN_DISABLE ; 
 int /*<<< orphan*/  DP_TRAINING_PATTERN_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(struct amdgpu_atombios_dp_link_train_info *dp_info)
{
	FUNC2(400);

	/* disable the training pattern on the sink */
	FUNC1(dp_info->aux,
			   DP_TRAINING_PATTERN_SET,
			   DP_TRAINING_PATTERN_DISABLE);

	/* disable the training pattern on the source */
	FUNC0(dp_info->encoder,
					   ATOM_ENCODER_CMD_DP_LINK_TRAINING_COMPLETE, 0);

	return 0;
}