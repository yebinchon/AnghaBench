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
struct ad5758_state {int dc_dc_mode; } ;
typedef  enum ad5758_dc_dc_mode { ____Placeholder_ad5758_dc_dc_mode } ad5758_dc_dc_mode ;

/* Variables and functions */
 int /*<<< orphan*/  AD5758_ADC_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AD5758_ADC_CONFIG_PPC_BUF_MSK ; 
 int /*<<< orphan*/  AD5758_DCDC_CONFIG1 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  AD5758_DCDC_CONFIG1_DCDC_MODE_MSK ; 
 int /*<<< orphan*/  AD5758_DCDC_CONFIG2 ; 
 int /*<<< orphan*/  AD5758_DCDC_CONFIG2_BUSY_3WI_MSK ; 
 int AD5758_DCDC_MODE_PPC_CURRENT ; 
 int FUNC2 (struct ad5758_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ad5758_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ad5758_state *st,
				      enum ad5758_dc_dc_mode mode)
{
	int ret;

	/*
	 * The ENABLE_PPC_BUFFERS bit must be set prior to enabling PPC current
	 * mode.
	 */
	if (mode == AD5758_DCDC_MODE_PPC_CURRENT) {
		ret  = FUNC2(st, AD5758_ADC_CONFIG,
				    AD5758_ADC_CONFIG_PPC_BUF_MSK,
				    FUNC0(1));
		if (ret < 0)
			return ret;
	}

	ret = FUNC2(st, AD5758_DCDC_CONFIG1,
				    AD5758_DCDC_CONFIG1_DCDC_MODE_MSK,
				    FUNC1(mode));
	if (ret < 0)
		return ret;

	/*
	 * Poll the BUSY_3WI bit in the DCDC_CONFIG2 register until it is 0.
	 * This allows the 3-wire interface communication to complete.
	 */
	ret = FUNC3(st, AD5758_DCDC_CONFIG2,
					    AD5758_DCDC_CONFIG2_BUSY_3WI_MSK);
	if (ret < 0)
		return ret;

	st->dc_dc_mode = mode;

	return ret;
}