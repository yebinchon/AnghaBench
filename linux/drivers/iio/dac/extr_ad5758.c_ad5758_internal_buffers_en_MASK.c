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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AD5758_DAC_CONFIG_INT_EN_MSK ; 
 int /*<<< orphan*/  AD5758_DIGITAL_DIAG_RESULTS ; 
 int FUNC1 (struct ad5758_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ad5758_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ad5758_state *st, bool enable)
{
	int ret;

	ret = FUNC1(st, AD5758_DAC_CONFIG,
				    AD5758_DAC_CONFIG_INT_EN_MSK,
				    FUNC0(enable));
	if (ret < 0)
		return ret;

	/* Wait to allow time for the internal calibrations to complete */
	return FUNC2(st, AD5758_DIGITAL_DIAG_RESULTS,
					     AD5758_CAL_MEM_UNREFRESHED_MSK);
}