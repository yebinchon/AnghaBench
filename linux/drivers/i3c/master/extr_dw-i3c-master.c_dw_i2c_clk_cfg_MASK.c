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
typedef  unsigned long u16 ;
struct dw_i3c_master {scalar_t__ regs; int /*<<< orphan*/  core_clk; } ;

/* Variables and functions */
 scalar_t__ BUS_FREE_TIMING ; 
 int FUNC0 (unsigned long) ; 
 scalar_t__ DEVICE_CTRL ; 
 int DEV_CTRL_I2C_SLAVE_PRESENT ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 int EINVAL ; 
 unsigned long I3C_BUS_I2C_FMP_TLOW_MIN_NS ; 
 unsigned long I3C_BUS_I2C_FM_PLUS_SCL_RATE ; 
 unsigned long I3C_BUS_I2C_FM_SCL_RATE ; 
 unsigned long I3C_BUS_I2C_FM_TLOW_MIN_NS ; 
 scalar_t__ SCL_I2C_FMP_TIMING ; 
 int FUNC2 (unsigned long) ; 
 int FUNC3 (unsigned long) ; 
 scalar_t__ SCL_I2C_FM_TIMING ; 
 int FUNC4 (unsigned long) ; 
 int FUNC5 (unsigned long) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct dw_i3c_master *master)
{
	unsigned long core_rate, core_period;
	u16 hcnt, lcnt;
	u32 scl_timing;

	core_rate = FUNC6(master->core_clk);
	if (!core_rate)
		return -EINVAL;

	core_period = FUNC1(1000000000, core_rate);

	lcnt = FUNC1(I3C_BUS_I2C_FMP_TLOW_MIN_NS, core_period);
	hcnt = FUNC1(core_rate, I3C_BUS_I2C_FM_PLUS_SCL_RATE) - lcnt;
	scl_timing = FUNC2(hcnt) |
		     FUNC3(lcnt);
	FUNC8(scl_timing, master->regs + SCL_I2C_FMP_TIMING);

	lcnt = FUNC1(I3C_BUS_I2C_FM_TLOW_MIN_NS, core_period);
	hcnt = FUNC1(core_rate, I3C_BUS_I2C_FM_SCL_RATE) - lcnt;
	scl_timing = FUNC4(hcnt) |
		     FUNC5(lcnt);
	FUNC8(scl_timing, master->regs + SCL_I2C_FM_TIMING);

	FUNC8(FUNC0(lcnt), master->regs + BUS_FREE_TIMING);
	FUNC8(FUNC7(master->regs + DEVICE_CTRL) | DEV_CTRL_I2C_SLAVE_PRESENT,
	       master->regs + DEVICE_CTRL);

	return 0;
}