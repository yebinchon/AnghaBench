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
typedef  int u32 ;
struct dw_i3c_master {scalar_t__ regs; int /*<<< orphan*/  core_clk; } ;

/* Variables and functions */
 scalar_t__ BUS_FREE_TIMING ; 
 int FUNC0 (int) ; 
 scalar_t__ DEVICE_CTRL ; 
 int DEV_CTRL_I2C_SLAVE_PRESENT ; 
 int FUNC1 (unsigned long,unsigned long) ; 
 int EINVAL ; 
 unsigned long I3C_BUS_SDR1_SCL_RATE ; 
 unsigned long I3C_BUS_SDR2_SCL_RATE ; 
 unsigned long I3C_BUS_SDR3_SCL_RATE ; 
 unsigned long I3C_BUS_SDR4_SCL_RATE ; 
 unsigned long I3C_BUS_THIGH_MAX_NS ; 
 unsigned long I3C_BUS_TLOW_OD_MIN_NS ; 
 unsigned long I3C_BUS_TYP_I3C_SCL_RATE ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 scalar_t__ SCL_EXT_LCNT_TIMING ; 
 scalar_t__ SCL_I3C_OD_TIMING ; 
 scalar_t__ SCL_I3C_PP_TIMING ; 
 int SCL_I3C_TIMING_CNT_MIN ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct dw_i3c_master *master)
{
	unsigned long core_rate, core_period;
	u32 scl_timing;
	u8 hcnt, lcnt;

	core_rate = FUNC8(master->core_clk);
	if (!core_rate)
		return -EINVAL;

	core_period = FUNC1(1000000000, core_rate);

	hcnt = FUNC1(I3C_BUS_THIGH_MAX_NS, core_period) - 1;
	if (hcnt < SCL_I3C_TIMING_CNT_MIN)
		hcnt = SCL_I3C_TIMING_CNT_MIN;

	lcnt = FUNC1(core_rate, I3C_BUS_TYP_I3C_SCL_RATE) - hcnt;
	if (lcnt < SCL_I3C_TIMING_CNT_MIN)
		lcnt = SCL_I3C_TIMING_CNT_MIN;

	scl_timing = FUNC6(hcnt) | FUNC7(lcnt);
	FUNC10(scl_timing, master->regs + SCL_I3C_PP_TIMING);

	if (!(FUNC9(master->regs + DEVICE_CTRL) & DEV_CTRL_I2C_SLAVE_PRESENT))
		FUNC10(FUNC0(lcnt), master->regs + BUS_FREE_TIMING);

	lcnt = FUNC1(I3C_BUS_TLOW_OD_MIN_NS, core_period);
	scl_timing = FUNC6(hcnt) | FUNC7(lcnt);
	FUNC10(scl_timing, master->regs + SCL_I3C_OD_TIMING);

	lcnt = FUNC1(core_rate, I3C_BUS_SDR1_SCL_RATE) - hcnt;
	scl_timing = FUNC2(lcnt);
	lcnt = FUNC1(core_rate, I3C_BUS_SDR2_SCL_RATE) - hcnt;
	scl_timing |= FUNC3(lcnt);
	lcnt = FUNC1(core_rate, I3C_BUS_SDR3_SCL_RATE) - hcnt;
	scl_timing |= FUNC4(lcnt);
	lcnt = FUNC1(core_rate, I3C_BUS_SDR4_SCL_RATE) - hcnt;
	scl_timing |= FUNC5(lcnt);
	FUNC10(scl_timing, master->regs + SCL_EXT_LCNT_TIMING);

	return 0;
}