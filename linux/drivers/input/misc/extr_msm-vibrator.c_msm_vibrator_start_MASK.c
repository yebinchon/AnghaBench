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
struct msm_vibrator {int enabled; int magnitude; int /*<<< orphan*/  mutex; int /*<<< orphan*/  enable_gpio; int /*<<< orphan*/  clk; TYPE_1__* input; int /*<<< orphan*/  vcc; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_CBCR ; 
 int /*<<< orphan*/  REG_CFG_RCGR ; 
 int /*<<< orphan*/  REG_CMD_RCGR ; 
 int /*<<< orphan*/  REG_D ; 
 int /*<<< orphan*/  REG_M ; 
 int /*<<< orphan*/  REG_N ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_vibrator*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct msm_vibrator *vibrator)
{
	int d_reg_val, ret = 0;

	FUNC6(&vibrator->mutex);

	if (!vibrator->enabled) {
		ret = FUNC2(vibrator->clk, 24000);
		if (ret) {
			FUNC3(&vibrator->input->dev,
				"Failed to set clock rate: %d\n", ret);
			goto unlock;
		}

		ret = FUNC1(vibrator->clk);
		if (ret) {
			FUNC3(&vibrator->input->dev,
				"Failed to enable clock: %d\n", ret);
			goto unlock;
		}

		ret = FUNC8(vibrator->vcc);
		if (ret) {
			FUNC3(&vibrator->input->dev,
				"Failed to enable regulator: %d\n", ret);
			FUNC0(vibrator->clk);
			goto unlock;
		}

		FUNC4(vibrator->enable_gpio, 1);

		vibrator->enabled = true;
	}

	d_reg_val = 127 - ((126 * vibrator->magnitude) / 0xffff);
	FUNC5(vibrator, REG_CFG_RCGR,
			   (2 << 12) | /* dual edge mode */
			   (0 << 8) |  /* cxo */
			   (7 << 0));
	FUNC5(vibrator, REG_M, 1);
	FUNC5(vibrator, REG_N, 128);
	FUNC5(vibrator, REG_D, d_reg_val);
	FUNC5(vibrator, REG_CMD_RCGR, 1);
	FUNC5(vibrator, REG_CBCR, 1);

unlock:
	FUNC7(&vibrator->mutex);

	return ret;
}