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
struct amdgpu_atombios_dp_link_train_info {int /*<<< orphan*/  dp_lane_count; int /*<<< orphan*/ * train_set; int /*<<< orphan*/  aux; int /*<<< orphan*/  encoder; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH ; 
 int /*<<< orphan*/  DP_TRAINING_LANE0_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct amdgpu_atombios_dp_link_train_info *dp_info)
{
	/* set the initial vs/emph on the source */
	FUNC0(dp_info->encoder,
					       ATOM_TRANSMITTER_ACTION_SETUP_VSEMPH,
					       0, dp_info->train_set[0]); /* sets all lanes at once */

	/* set the vs/emph on the sink */
	FUNC1(dp_info->aux, DP_TRAINING_LANE0_SET,
			  dp_info->train_set, dp_info->dp_lane_count);
}