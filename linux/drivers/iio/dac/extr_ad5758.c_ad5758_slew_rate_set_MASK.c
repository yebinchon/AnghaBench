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
struct ad5758_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD5758_CAL_MEM_UNREFRESHED_MSK ; 
 int /*<<< orphan*/  AD5758_DAC_CONFIG ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned long AD5758_DAC_CONFIG_SR_CLOCK_MSK ; 
 unsigned int FUNC1 (int) ; 
 unsigned long AD5758_DAC_CONFIG_SR_EN_MSK ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned long AD5758_DAC_CONFIG_SR_STEP_MSK ; 
 int /*<<< orphan*/  AD5758_DIGITAL_DIAG_RESULTS ; 
 int FUNC3 (struct ad5758_state*,int /*<<< orphan*/ ,unsigned long,unsigned int) ; 
 int FUNC4 (struct ad5758_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ad5758_state *st,
				unsigned int sr_clk_idx,
				unsigned int sr_step_idx)
{
	unsigned int mode;
	unsigned long int mask;
	int ret;

	mask = AD5758_DAC_CONFIG_SR_EN_MSK |
	       AD5758_DAC_CONFIG_SR_CLOCK_MSK |
	       AD5758_DAC_CONFIG_SR_STEP_MSK;
	mode = FUNC1(1) |
	       FUNC2(sr_step_idx) |
	       FUNC0(sr_clk_idx);

	ret = FUNC3(st, AD5758_DAC_CONFIG, mask, mode);
	if (ret < 0)
		return ret;

	/* Wait to allow time for the internal calibrations to complete */
	return FUNC4(st, AD5758_DIGITAL_DIAG_RESULTS,
					     AD5758_CAL_MEM_UNREFRESHED_MSK);
}