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
struct TYPE_2__ {struct drm_device* dev; } ;
struct gma_encoder {struct cdv_intel_dp* dev_priv; TYPE_1__ base; } ;
struct drm_device {int dummy; } ;
struct cdv_intel_dp {int DP; int /*<<< orphan*/  output_reg; } ;

/* Variables and functions */
 int DP_LINK_TRAIN_MASK ; 
 int DP_LINK_TRAIN_PAT_IDLE ; 
 int DP_PORT_EN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(struct gma_encoder *encoder)
{
	struct drm_device *dev = encoder->base.dev;
	struct cdv_intel_dp *intel_dp = encoder->dev_priv;
	uint32_t DP = intel_dp->DP;

	if ((FUNC1(intel_dp->output_reg) & DP_PORT_EN) == 0)
		return;

	FUNC0("\n");


	{
		DP &= ~DP_LINK_TRAIN_MASK;
		FUNC2(intel_dp->output_reg, DP | DP_LINK_TRAIN_PAT_IDLE);
	}
	FUNC1(intel_dp->output_reg);

	FUNC3(17);

	FUNC2(intel_dp->output_reg, DP & ~DP_PORT_EN);
	FUNC1(intel_dp->output_reg);
}