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
typedef  int uint32_t ;
typedef  int u32 ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct gma_encoder {struct cdv_intel_dp* dev_priv; TYPE_1__ base; } ;
struct drm_device {int dummy; } ;
struct cdv_intel_dp {int DP; int /*<<< orphan*/  output_reg; int /*<<< orphan*/  lane_count; int /*<<< orphan*/ * link_status; int /*<<< orphan*/ * train_set; int /*<<< orphan*/ * link_configuration; } ;

/* Variables and functions */
 int DP_LINK_TRAIN_OFF ; 
 int DP_LINK_TRAIN_PAT_2 ; 
 int /*<<< orphan*/  DP_TRAINING_PATTERN_2 ; 
 int /*<<< orphan*/  DP_TRAINING_PATTERN_DISABLE ; 
 int /*<<< orphan*/  DP_TRAINING_PATTERN_SET ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gma_encoder*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC8 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC9 (struct gma_encoder*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gma_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC12 (struct gma_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct gma_encoder*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static void
FUNC15(struct gma_encoder *encoder)
{
	struct drm_device *dev = encoder->base.dev;
	struct cdv_intel_dp *intel_dp = encoder->dev_priv;
	bool channel_eq = false;
	int tries, cr_tries;
	u32 reg;
	uint32_t DP = intel_dp->DP;

	/* channel equalization */
	tries = 0;
	cr_tries = 0;
	channel_eq = false;

	FUNC0("\n");
		reg = DP | DP_LINK_TRAIN_PAT_2;

	for (;;) {

		FUNC0("DP Link Train Set %x, Link_config %x, %x\n",
				intel_dp->train_set[0],
				intel_dp->link_configuration[0],
				intel_dp->link_configuration[1]);
        	/* channel eq pattern */

		if (!FUNC9(encoder, reg,
					     DP_TRAINING_PATTERN_2)) {
			FUNC0("Failure in aux-transfer setting pattern 2\n");
		}
		/* Use intel_dp->train_set[0] to set the voltage and pre emphasis values */

		if (cr_tries > 5) {
			FUNC1("failed to train DP, aborting\n");
			FUNC8(encoder);
			break;
		}

		FUNC10(encoder, intel_dp->train_set[0]);

		FUNC12(encoder, DP_TRAINING_PATTERN_2);

		FUNC14(1000);
		if (!FUNC7(encoder))
			break;

		FUNC0("DP Link status %x, %x, %x, %x, %x, %x\n",
				intel_dp->link_status[0], intel_dp->link_status[1], intel_dp->link_status[2],
				intel_dp->link_status[3], intel_dp->link_status[4], intel_dp->link_status[5]);

		/* Make sure clock is still ok */
		if (!FUNC5(intel_dp->link_status, intel_dp->lane_count)) {
			FUNC11(encoder);
			cr_tries++;
			continue;
		}

		if (FUNC4(encoder)) {
			FUNC0("PT2 train is done\n");
			channel_eq = true;
			break;
		}

		/* Try 5 times, then try clock recovery if that fails */
		if (tries > 5) {
			FUNC8(encoder);
			FUNC11(encoder);
			tries = 0;
			cr_tries++;
			continue;
		}

		/* Compute new intel_dp->train_set as requested by target */
		FUNC13(encoder);
		++tries;

	}

	reg = DP | DP_LINK_TRAIN_OFF;

	FUNC3(intel_dp->output_reg, reg);
	FUNC2(intel_dp->output_reg);
	FUNC6(encoder,
				    DP_TRAINING_PATTERN_SET, DP_TRAINING_PATTERN_DISABLE);
}