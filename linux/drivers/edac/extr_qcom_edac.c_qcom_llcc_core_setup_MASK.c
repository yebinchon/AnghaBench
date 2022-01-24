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
struct regmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMN_INTERRUPT_2_ENABLE ; 
 int /*<<< orphan*/  DRP0_INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  DRP_ECC_ERROR_CFG ; 
 int /*<<< orphan*/  DRP_INTERRUPT_ENABLE ; 
 int SB_DB_DRP_INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  SB_DB_TRP_INTERRUPT_ENABLE ; 
 int SB_ERROR_THRESHOLD ; 
 int SB_ERROR_THRESHOLD_SHIFT ; 
 int /*<<< orphan*/  TRP0_INTERRUPT_ENABLE ; 
 int /*<<< orphan*/  TRP_INTERRUPT_0_ENABLE ; 
 int FUNC0 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct regmap*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct regmap *llcc_bcast_regmap)
{
	u32 sb_err_threshold;
	int ret;

	/*
	 * Configure interrupt enable registers such that Tag, Data RAM related
	 * interrupts are propagated to interrupt controller for servicing
	 */
	ret = FUNC0(llcc_bcast_regmap, CMN_INTERRUPT_2_ENABLE,
				 TRP0_INTERRUPT_ENABLE,
				 TRP0_INTERRUPT_ENABLE);
	if (ret)
		return ret;

	ret = FUNC0(llcc_bcast_regmap, TRP_INTERRUPT_0_ENABLE,
				 SB_DB_TRP_INTERRUPT_ENABLE,
				 SB_DB_TRP_INTERRUPT_ENABLE);
	if (ret)
		return ret;

	sb_err_threshold = (SB_ERROR_THRESHOLD << SB_ERROR_THRESHOLD_SHIFT);
	ret = FUNC1(llcc_bcast_regmap, DRP_ECC_ERROR_CFG,
			   sb_err_threshold);
	if (ret)
		return ret;

	ret = FUNC0(llcc_bcast_regmap, CMN_INTERRUPT_2_ENABLE,
				 DRP0_INTERRUPT_ENABLE,
				 DRP0_INTERRUPT_ENABLE);
	if (ret)
		return ret;

	ret = FUNC1(llcc_bcast_regmap, DRP_INTERRUPT_ENABLE,
			   SB_DB_DRP_INTERRUPT_ENABLE);
	return ret;
}