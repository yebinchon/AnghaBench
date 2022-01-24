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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct gma_encoder {struct cdv_intel_dp* dev_priv; TYPE_1__ base; } ;
struct drm_device {int dummy; } ;
struct cdv_intel_dp {int /*<<< orphan*/  output_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_TRAINING_PATTERN_SET ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct gma_encoder*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4(struct gma_encoder *encoder,
			uint32_t dp_reg_value,
			uint8_t dp_train_pat)
{
	
	struct drm_device *dev = encoder->base.dev;
	int ret;
	struct cdv_intel_dp *intel_dp = encoder->dev_priv;

	FUNC2(intel_dp->output_reg, dp_reg_value);
	FUNC1(intel_dp->output_reg);

	ret = FUNC3(encoder,
				    DP_TRAINING_PATTERN_SET,
				    dp_train_pat);

	if (ret != 1) {
		FUNC0("Failure in setting link pattern %x\n",
				dp_train_pat);
		return false;
	}

	return true;
}