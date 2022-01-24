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
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;

/* Variables and functions */
 struct optc* FUNC0 (struct timing_generator*) ; 
 int /*<<< orphan*/  OPTC_INPUT_CLK_EN ; 
 int /*<<< orphan*/  OPTC_INPUT_CLK_GATE_DIS ; 
 int /*<<< orphan*/  OPTC_INPUT_CLK_ON ; 
 int /*<<< orphan*/  OPTC_INPUT_CLOCK_CONTROL ; 
 int /*<<< orphan*/  OTG_CLOCK_CONTROL ; 
 int /*<<< orphan*/  OTG_CLOCK_EN ; 
 int /*<<< orphan*/  OTG_CLOCK_GATE_DIS ; 
 int /*<<< orphan*/  OTG_CLOCK_ON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 

void FUNC3(struct timing_generator *optc, bool enable)
{
	struct optc *optc1 = FUNC0(optc);

	if (enable) {
		FUNC1(OPTC_INPUT_CLOCK_CONTROL,
				OPTC_INPUT_CLK_EN, 1,
				OPTC_INPUT_CLK_GATE_DIS, 1);

		FUNC2(OPTC_INPUT_CLOCK_CONTROL,
				OPTC_INPUT_CLK_ON, 1,
				1, 1000);

		/* Enable clock */
		FUNC1(OTG_CLOCK_CONTROL,
				OTG_CLOCK_EN, 1,
				OTG_CLOCK_GATE_DIS, 1);
		FUNC2(OTG_CLOCK_CONTROL,
				OTG_CLOCK_ON, 1,
				1, 1000);
	} else  {
		FUNC1(OTG_CLOCK_CONTROL,
				OTG_CLOCK_GATE_DIS, 0,
				OTG_CLOCK_EN, 0);

		FUNC1(OPTC_INPUT_CLOCK_CONTROL,
				OPTC_INPUT_CLK_GATE_DIS, 0,
				OPTC_INPUT_CLK_EN, 0);
	}
}