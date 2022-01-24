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
struct dw_i2c_dev {scalar_t__ sda_hold_time; scalar_t__ hs_lcnt; scalar_t__ hs_hcnt; scalar_t__ fs_lcnt; scalar_t__ fs_hcnt; scalar_t__ ss_lcnt; scalar_t__ ss_hcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_IC_FS_SCL_HCNT ; 
 int /*<<< orphan*/  DW_IC_FS_SCL_LCNT ; 
 int /*<<< orphan*/  DW_IC_HS_SCL_HCNT ; 
 int /*<<< orphan*/  DW_IC_HS_SCL_LCNT ; 
 int /*<<< orphan*/  DW_IC_SDA_HOLD ; 
 int /*<<< orphan*/  DW_IC_SS_SCL_HCNT ; 
 int /*<<< orphan*/  DW_IC_SS_SCL_LCNT ; 
 int /*<<< orphan*/  FUNC0 (struct dw_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_i2c_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dw_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct dw_i2c_dev*) ; 

__attribute__((used)) static int FUNC5(struct dw_i2c_dev *dev)
{
	int ret;

	ret = FUNC2(dev);
	if (ret)
		return ret;

	/* Disable the adapter */
	FUNC0(dev);

	/* Write standard speed timing parameters */
	FUNC1(dev, dev->ss_hcnt, DW_IC_SS_SCL_HCNT);
	FUNC1(dev, dev->ss_lcnt, DW_IC_SS_SCL_LCNT);

	/* Write fast mode/fast mode plus timing parameters */
	FUNC1(dev, dev->fs_hcnt, DW_IC_FS_SCL_HCNT);
	FUNC1(dev, dev->fs_lcnt, DW_IC_FS_SCL_LCNT);

	/* Write high speed timing parameters if supported */
	if (dev->hs_hcnt && dev->hs_lcnt) {
		FUNC1(dev, dev->hs_hcnt, DW_IC_HS_SCL_HCNT);
		FUNC1(dev, dev->hs_lcnt, DW_IC_HS_SCL_LCNT);
	}

	/* Write SDA hold time if supported */
	if (dev->sda_hold_time)
		FUNC1(dev, dev->sda_hold_time, DW_IC_SDA_HOLD);

	FUNC3(dev);
	FUNC4(dev);

	return 0;
}