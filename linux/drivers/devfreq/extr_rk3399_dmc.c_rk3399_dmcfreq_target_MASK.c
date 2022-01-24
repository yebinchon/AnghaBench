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
typedef  int /*<<< orphan*/  u32 ;
struct rk3399_dmcfreq {unsigned long rate; unsigned long odt_dis_freq; unsigned long volt; int /*<<< orphan*/  lock; int /*<<< orphan*/  vdd_center; int /*<<< orphan*/  dmc_clk; int /*<<< orphan*/  odt_pd_arg1; int /*<<< orphan*/  odt_pd_arg0; } ;
struct device {int dummy; } ;
struct dev_pm_opp {int dummy; } ;
struct arm_smccc_res {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dev_pm_opp*) ; 
 int FUNC1 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  ROCKCHIP_SIP_CONFIG_DRAM_SET_ODT_PD ; 
 int /*<<< orphan*/  ROCKCHIP_SIP_DRAM_FREQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct arm_smccc_res*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,unsigned long,...) ; 
 struct rk3399_dmcfreq* FUNC6 (struct device*) ; 
 unsigned long FUNC7 (struct dev_pm_opp*) ; 
 unsigned long FUNC8 (struct dev_pm_opp*) ; 
 int /*<<< orphan*/  FUNC9 (struct dev_pm_opp*) ; 
 struct dev_pm_opp* FUNC10 (struct device*,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC14(struct device *dev, unsigned long *freq,
				 u32 flags)
{
	struct rk3399_dmcfreq *dmcfreq = FUNC6(dev);
	struct dev_pm_opp *opp;
	unsigned long old_clk_rate = dmcfreq->rate;
	unsigned long target_volt, target_rate;
	struct arm_smccc_res res;
	bool odt_enable = false;
	int err;

	opp = FUNC10(dev, freq, flags);
	if (FUNC0(opp))
		return FUNC1(opp);

	target_rate = FUNC7(opp);
	target_volt = FUNC8(opp);
	FUNC9(opp);

	if (dmcfreq->rate == target_rate)
		return 0;

	FUNC11(&dmcfreq->lock);

	if (target_rate >= dmcfreq->odt_dis_freq)
		odt_enable = true;

	/*
	 * This makes a SMC call to the TF-A to set the DDR PD (power-down)
	 * timings and to enable or disable the ODT (on-die termination)
	 * resistors.
	 */
	FUNC2(ROCKCHIP_SIP_DRAM_FREQ, dmcfreq->odt_pd_arg0,
		      dmcfreq->odt_pd_arg1,
		      ROCKCHIP_SIP_CONFIG_DRAM_SET_ODT_PD,
		      odt_enable, 0, 0, 0, &res);

	/*
	 * If frequency scaling from low to high, adjust voltage first.
	 * If frequency scaling from high to low, adjust frequency first.
	 */
	if (old_clk_rate < target_rate) {
		err = FUNC13(dmcfreq->vdd_center, target_volt,
					    target_volt);
		if (err) {
			FUNC5(dev, "Cannot set voltage %lu uV\n",
				target_volt);
			goto out;
		}
	}

	err = FUNC4(dmcfreq->dmc_clk, target_rate);
	if (err) {
		FUNC5(dev, "Cannot set frequency %lu (%d)\n", target_rate,
			err);
		FUNC13(dmcfreq->vdd_center, dmcfreq->volt,
				      dmcfreq->volt);
		goto out;
	}

	/*
	 * Check the dpll rate,
	 * There only two result we will get,
	 * 1. Ddr frequency scaling fail, we still get the old rate.
	 * 2. Ddr frequency scaling sucessful, we get the rate we set.
	 */
	dmcfreq->rate = FUNC3(dmcfreq->dmc_clk);

	/* If get the incorrect rate, set voltage to old value. */
	if (dmcfreq->rate != target_rate) {
		FUNC5(dev, "Got wrong frequency, Request %lu, Current %lu\n",
			target_rate, dmcfreq->rate);
		FUNC13(dmcfreq->vdd_center, dmcfreq->volt,
				      dmcfreq->volt);
		goto out;
	} else if (old_clk_rate > target_rate)
		err = FUNC13(dmcfreq->vdd_center, target_volt,
					    target_volt);
	if (err)
		FUNC5(dev, "Cannot set voltage %lu uV\n", target_volt);

	dmcfreq->rate = target_rate;
	dmcfreq->volt = target_volt;

out:
	FUNC12(&dmcfreq->lock);
	return err;
}