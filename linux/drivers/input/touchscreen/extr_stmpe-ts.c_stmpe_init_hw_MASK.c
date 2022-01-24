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
typedef  int u8 ;
struct stmpe_touch {int ave_ctrl; int touch_det_delay; int settling; int fraction_z; int i_drive; struct device* dev; struct stmpe* stmpe; } ;
struct stmpe {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int OP_MOD_XYZ ; 
 int FUNC0 (int) ; 
 int STMPE_BLOCK_ADC ; 
 int STMPE_BLOCK_TOUCHSCREEN ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  STMPE_REG_FIFO_TH ; 
 int /*<<< orphan*/  STMPE_REG_TSC_CFG ; 
 int /*<<< orphan*/  STMPE_REG_TSC_CTRL ; 
 int /*<<< orphan*/  STMPE_REG_TSC_FRACTION_Z ; 
 int /*<<< orphan*/  STMPE_REG_TSC_I_DRIVE ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int FUNC7 (struct stmpe*) ; 
 int /*<<< orphan*/  FUNC8 (struct stmpe*,int) ; 
 int FUNC9 (struct stmpe*,int) ; 
 int FUNC10 (struct stmpe*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct stmpe*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC12(struct stmpe_touch *ts)
{
	int ret;
	u8 tsc_cfg, tsc_cfg_mask;
	struct stmpe *stmpe = ts->stmpe;
	struct device *dev = ts->dev;

	ret = FUNC9(stmpe, STMPE_BLOCK_TOUCHSCREEN | STMPE_BLOCK_ADC);
	if (ret) {
		FUNC6(dev, "Could not enable clock for ADC and TS\n");
		return ret;
	}

	ret = FUNC7(stmpe);
	if (ret) {
		FUNC8(stmpe, STMPE_BLOCK_TOUCHSCREEN | STMPE_BLOCK_ADC);
		return ret;
	}

	tsc_cfg = FUNC0(ts->ave_ctrl) |
		  FUNC1(ts->touch_det_delay) |
		  FUNC5(ts->settling);
	tsc_cfg_mask = FUNC0(0xff) | FUNC1(0xff) |
		       FUNC5(0xff);

	ret = FUNC11(stmpe, STMPE_REG_TSC_CFG, tsc_cfg_mask, tsc_cfg);
	if (ret) {
		FUNC6(dev, "Could not config touch\n");
		return ret;
	}

	ret = FUNC11(stmpe, STMPE_REG_TSC_FRACTION_Z,
			FUNC2(0xff), FUNC2(ts->fraction_z));
	if (ret) {
		FUNC6(dev, "Could not config touch\n");
		return ret;
	}

	ret = FUNC11(stmpe, STMPE_REG_TSC_I_DRIVE,
			FUNC3(0xff), FUNC3(ts->i_drive));
	if (ret) {
		FUNC6(dev, "Could not config touch\n");
		return ret;
	}

	/* set FIFO to 1 for single point reading */
	ret = FUNC10(stmpe, STMPE_REG_FIFO_TH, 1);
	if (ret) {
		FUNC6(dev, "Could not set FIFO\n");
		return ret;
	}

	ret = FUNC11(stmpe, STMPE_REG_TSC_CTRL,
			FUNC4(0xff), FUNC4(OP_MOD_XYZ));
	if (ret) {
		FUNC6(dev, "Could not set mode\n");
		return ret;
	}

	return 0;
}