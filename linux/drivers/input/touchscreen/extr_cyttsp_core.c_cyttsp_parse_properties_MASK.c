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
struct device {int dummy; } ;
struct cyttsp {int use_hndshk; int act_dist; int act_intrvl; int tch_tmout; int lp_intrvl; int /*<<< orphan*/  bl_keys; struct device* dev; } ;

/* Variables and functions */
 int CY_ACT_DIST_DFLT ; 
 int CY_ACT_DIST_MASK ; 
 int CY_ACT_INTRVL_DFLT ; 
 int CY_LP_INTRVL_DFLT ; 
 int /*<<< orphan*/  CY_NUM_BL_KEYS ; 
 int CY_TCH_TMOUT_DFLT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int*) ; 
 int FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct cyttsp *ts)
{
	struct device *dev = ts->dev;
	u32 dt_value;
	int ret;

	ts->bl_keys = FUNC4(dev, CY_NUM_BL_KEYS, GFP_KERNEL);
	if (!ts->bl_keys)
		return -ENOMEM;

	/* Set some default values */
	ts->use_hndshk = false;
	ts->act_dist = CY_ACT_DIST_DFLT;
	ts->act_intrvl = CY_ACT_INTRVL_DFLT;
	ts->tch_tmout = CY_TCH_TMOUT_DFLT;
	ts->lp_intrvl = CY_LP_INTRVL_DFLT;

	ret = FUNC3(dev, "bootloader-key",
					    ts->bl_keys, CY_NUM_BL_KEYS);
	if (ret) {
		FUNC0(dev,
			"bootloader-key property could not be retrieved\n");
		return ret;
	}

	ts->use_hndshk = FUNC1(dev, "use-handshake");

	if (!FUNC2(dev, "active-distance", &dt_value)) {
		if (dt_value > 15) {
			FUNC0(dev, "active-distance (%u) must be [0-15]\n",
				dt_value);
			return -EINVAL;
		}
		ts->act_dist &= ~CY_ACT_DIST_MASK;
		ts->act_dist |= dt_value;
	}

	if (!FUNC2(dev, "active-interval-ms", &dt_value)) {
		if (dt_value > 255) {
			FUNC0(dev, "active-interval-ms (%u) must be [0-255]\n",
				dt_value);
			return -EINVAL;
		}
		ts->act_intrvl = dt_value;
	}

	if (!FUNC2(dev, "lowpower-interval-ms", &dt_value)) {
		if (dt_value > 2550) {
			FUNC0(dev, "lowpower-interval-ms (%u) must be [0-2550]\n",
				dt_value);
			return -EINVAL;
		}
		/* Register value is expressed in 0.01s / bit */
		ts->lp_intrvl = dt_value / 10;
	}

	if (!FUNC2(dev, "touch-timeout-ms", &dt_value)) {
		if (dt_value > 2550) {
			FUNC0(dev, "touch-timeout-ms (%u) must be [0-2550]\n",
				dt_value);
			return -EINVAL;
		}
		/* Register value is expressed in 0.01s / bit */
		ts->tch_tmout = dt_value / 10;
	}

	return 0;
}