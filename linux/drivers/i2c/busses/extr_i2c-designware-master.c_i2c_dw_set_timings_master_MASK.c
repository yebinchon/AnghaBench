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
typedef  int u32 ;
struct i2c_timings {int bus_freq_hz; scalar_t__ scl_fall_ns; scalar_t__ sda_fall_ns; } ;
struct dw_i2c_dev {char const* ss_hcnt; char const* ss_lcnt; int master_cfg; char const* hs_hcnt; char const* hs_lcnt; int /*<<< orphan*/  dev; void* fs_lcnt; void* fs_hcnt; void* fp_lcnt; void* fp_hcnt; struct i2c_timings timings; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_IC_COMP_PARAM_1 ; 
 int DW_IC_COMP_PARAM_1_SPEED_MODE_HIGH ; 
 int DW_IC_COMP_PARAM_1_SPEED_MODE_MASK ; 
 int DW_IC_CON_SPEED_FAST ; 
#define  DW_IC_CON_SPEED_HIGH 129 
 int DW_IC_CON_SPEED_MASK ; 
#define  DW_IC_CON_SPEED_STD 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct dw_i2c_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dw_i2c_dev*) ; 
 int FUNC4 (struct dw_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct dw_i2c_dev*) ; 
 void* FUNC6 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct dw_i2c_dev*) ; 

__attribute__((used)) static int FUNC9(struct dw_i2c_dev *dev)
{
	const char *mode_str, *fp_str = "";
	u32 comp_param1;
	u32 sda_falling_time, scl_falling_time;
	struct i2c_timings *t = &dev->timings;
	u32 ic_clk;
	int ret;

	ret = FUNC3(dev);
	if (ret)
		return ret;
	comp_param1 = FUNC2(dev, DW_IC_COMP_PARAM_1);
	FUNC5(dev);

	/* Set standard and fast speed dividers for high/low periods */
	sda_falling_time = t->sda_fall_ns ?: 300; /* ns */
	scl_falling_time = t->scl_fall_ns ?: 300; /* ns */

	/* Calculate SCL timing parameters for standard mode if not set */
	if (!dev->ss_hcnt || !dev->ss_lcnt) {
		ic_clk = FUNC4(dev);
		dev->ss_hcnt =
			FUNC6(ic_clk,
					4000,	/* tHD;STA = tHIGH = 4.0 us */
					sda_falling_time,
					0,	/* 0: DW default, 1: Ideal */
					0);	/* No offset */
		dev->ss_lcnt =
			FUNC7(ic_clk,
					4700,	/* tLOW = 4.7 us */
					scl_falling_time,
					0);	/* No offset */
	}
	FUNC0(dev->dev, "Standard Mode HCNT:LCNT = %d:%d\n",
		dev->ss_hcnt, dev->ss_lcnt);

	/*
	 * Set SCL timing parameters for fast mode or fast mode plus. Only
	 * difference is the timing parameter values since the registers are
	 * the same.
	 */
	if (t->bus_freq_hz == 1000000) {
		/*
		 * Check are fast mode plus parameters available and use
		 * fast mode if not.
		 */
		if (dev->fp_hcnt && dev->fp_lcnt) {
			dev->fs_hcnt = dev->fp_hcnt;
			dev->fs_lcnt = dev->fp_lcnt;
			fp_str = " Plus";
		}
	}
	/*
	 * Calculate SCL timing parameters for fast mode if not set. They are
	 * needed also in high speed mode.
	 */
	if (!dev->fs_hcnt || !dev->fs_lcnt) {
		ic_clk = FUNC4(dev);
		dev->fs_hcnt =
			FUNC6(ic_clk,
					600,	/* tHD;STA = tHIGH = 0.6 us */
					sda_falling_time,
					0,	/* 0: DW default, 1: Ideal */
					0);	/* No offset */
		dev->fs_lcnt =
			FUNC7(ic_clk,
					1300,	/* tLOW = 1.3 us */
					scl_falling_time,
					0);	/* No offset */
	}
	FUNC0(dev->dev, "Fast Mode%s HCNT:LCNT = %d:%d\n",
		fp_str, dev->fs_hcnt, dev->fs_lcnt);

	/* Check is high speed possible and fall back to fast mode if not */
	if ((dev->master_cfg & DW_IC_CON_SPEED_MASK) ==
		DW_IC_CON_SPEED_HIGH) {
		if ((comp_param1 & DW_IC_COMP_PARAM_1_SPEED_MODE_MASK)
			!= DW_IC_COMP_PARAM_1_SPEED_MODE_HIGH) {
			FUNC1(dev->dev, "High Speed not supported!\n");
			dev->master_cfg &= ~DW_IC_CON_SPEED_MASK;
			dev->master_cfg |= DW_IC_CON_SPEED_FAST;
			dev->hs_hcnt = 0;
			dev->hs_lcnt = 0;
		} else if (dev->hs_hcnt && dev->hs_lcnt) {
			FUNC0(dev->dev, "High Speed Mode HCNT:LCNT = %d:%d\n",
				dev->hs_hcnt, dev->hs_lcnt);
		}
	}

	ret = FUNC8(dev);
	if (ret)
		goto out;

	switch (dev->master_cfg & DW_IC_CON_SPEED_MASK) {
	case DW_IC_CON_SPEED_STD:
		mode_str = "Standard Mode";
		break;
	case DW_IC_CON_SPEED_HIGH:
		mode_str = "High Speed Mode";
		break;
	default:
		mode_str = "Fast Mode";
	}
	FUNC0(dev->dev, "Bus speed: %s%s\n", mode_str, fp_str);

out:
	return ret;
}