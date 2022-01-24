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
struct imx6ul_tsc {int measure_delay_time; int pre_charge_time; scalar_t__ tsc_regs; } ;

/* Variables and functions */
 int AUTO_MEASURE ; 
 int DETECT_4_WIRE_MODE ; 
 int DE_GLITCH_2 ; 
 int MEASURE_INT_EN ; 
 int MEASURE_SIG_EN ; 
 scalar_t__ REG_TSC_BASIC_SETING ; 
 scalar_t__ REG_TSC_DEBUG_MODE2 ; 
 scalar_t__ REG_TSC_FLOW_CONTROL ; 
 scalar_t__ REG_TSC_INT_EN ; 
 scalar_t__ REG_TSC_INT_SIG_EN ; 
 scalar_t__ REG_TSC_PRE_CHARGE_TIME ; 
 int START_SENSE ; 
 int TSC_DISABLE ; 
 int VALID_SIG_EN ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct imx6ul_tsc *tsc)
{
	u32 basic_setting = 0;
	u32 start;

	basic_setting |= tsc->measure_delay_time << 8;
	basic_setting |= DETECT_4_WIRE_MODE | AUTO_MEASURE;
	FUNC1(basic_setting, tsc->tsc_regs + REG_TSC_BASIC_SETING);

	FUNC1(DE_GLITCH_2, tsc->tsc_regs + REG_TSC_DEBUG_MODE2);

	FUNC1(tsc->pre_charge_time, tsc->tsc_regs + REG_TSC_PRE_CHARGE_TIME);
	FUNC1(MEASURE_INT_EN, tsc->tsc_regs + REG_TSC_INT_EN);
	FUNC1(MEASURE_SIG_EN | VALID_SIG_EN,
		tsc->tsc_regs + REG_TSC_INT_SIG_EN);

	/* start sense detection */
	start = FUNC0(tsc->tsc_regs + REG_TSC_FLOW_CONTROL);
	start |= START_SENSE;
	start &= ~TSC_DISABLE;
	FUNC1(start, tsc->tsc_regs + REG_TSC_FLOW_CONTROL);
}