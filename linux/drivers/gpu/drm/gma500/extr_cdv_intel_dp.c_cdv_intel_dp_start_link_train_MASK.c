#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int u32 ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct gma_encoder {struct cdv_intel_dp* dev_priv; TYPE_1__ base; } ;
struct drm_device {int dummy; } ;
struct cdv_intel_dp {int DP; int* train_set; int lane_count; int /*<<< orphan*/ * link_status; int /*<<< orphan*/ * link_configuration; int /*<<< orphan*/  output_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_LINK_BW_SET ; 
 int DP_LINK_TRAIN_MASK ; 
 int DP_LINK_TRAIN_PAT_1 ; 
 int DP_PORT_EN ; 
 int /*<<< orphan*/  DP_TRAINING_PATTERN_1 ; 
 int DP_TRAIN_MAX_SWING_REACHED ; 
 int DP_TRAIN_VOLTAGE_SWING_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gma_encoder*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (struct gma_encoder*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gma_encoder*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct gma_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void
FUNC13(struct gma_encoder *encoder)
{
	struct drm_device *dev = encoder->base.dev;
	struct cdv_intel_dp *intel_dp = encoder->dev_priv;
	int i;
	uint8_t voltage;
	bool clock_recovery = false;
	int tries;
	u32 reg;
	uint32_t DP = intel_dp->DP;

	DP |= DP_PORT_EN;
	DP &= ~DP_LINK_TRAIN_MASK;
		
	reg = DP;	
	reg |= DP_LINK_TRAIN_PAT_1;
	/* Enable output, wait for it to become active */
	FUNC2(intel_dp->output_reg, reg);
	FUNC1(intel_dp->output_reg);
	FUNC10(dev);

	FUNC0("Link config\n");
	/* Write the link configuration data */
	FUNC4(encoder, DP_LINK_BW_SET,
				  intel_dp->link_configuration,
				  2);

	FUNC11(intel_dp->train_set, 0, 4);
	voltage = 0;
	tries = 0;
	clock_recovery = false;

	FUNC0("Start train\n");
		reg = DP | DP_LINK_TRAIN_PAT_1;


	for (;;) {
		/* Use intel_dp->train_set[0] to set the voltage and pre emphasis values */
		FUNC0("DP Link Train Set %x, Link_config %x, %x\n",
				intel_dp->train_set[0],
				intel_dp->link_configuration[0],
				intel_dp->link_configuration[1]);

		if (!FUNC6(encoder, reg, DP_TRAINING_PATTERN_1)) {
			FUNC0("Failure in aux-transfer setting pattern 1\n");
		}
		FUNC7(encoder, intel_dp->train_set[0]);
		/* Set training pattern 1 */

		FUNC8(encoder, DP_TRAINING_PATTERN_1);

		FUNC12(200);
		if (!FUNC5(encoder))
			break;

		FUNC0("DP Link status %x, %x, %x, %x, %x, %x\n",
				intel_dp->link_status[0], intel_dp->link_status[1], intel_dp->link_status[2],
				intel_dp->link_status[3], intel_dp->link_status[4], intel_dp->link_status[5]);

		if (FUNC3(intel_dp->link_status, intel_dp->lane_count)) {
			FUNC0("PT1 train is done\n");
			clock_recovery = true;
			break;
		}

		/* Check to see if we've tried the max voltage */
		for (i = 0; i < intel_dp->lane_count; i++)
			if ((intel_dp->train_set[i] & DP_TRAIN_MAX_SWING_REACHED) == 0)
				break;
		if (i == intel_dp->lane_count)
			break;

		/* Check to see if we've tried the same voltage 5 times */
		if ((intel_dp->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK) == voltage) {
			++tries;
			if (tries == 5)
				break;
		} else
			tries = 0;
		voltage = intel_dp->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK;

		/* Compute new intel_dp->train_set as requested by target */
		FUNC9(encoder);

	}

	if (!clock_recovery) {
		FUNC0("failure in DP patter 1 training, train set %x\n", intel_dp->train_set[0]);
	}
	
	intel_dp->DP = DP;
}