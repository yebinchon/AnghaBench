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
struct ucb1400_ts {int /*<<< orphan*/  ac97; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCB_ADC_INP_TSPY ; 
 int /*<<< orphan*/  UCB_TS_CR ; 
 int UCB_TS_CR_BIAS_ENA ; 
 int UCB_TS_CR_MODE_POS ; 
 int UCB_TS_CR_MODE_PRES ; 
 int UCB_TS_CR_TSMX_GND ; 
 int UCB_TS_CR_TSPX_POW ; 
 int /*<<< orphan*/  adcsync ; 
 int /*<<< orphan*/  ts_delay ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC3(struct ucb1400_ts *ucb)
{
	FUNC1(ucb->ac97, UCB_TS_CR,
			UCB_TS_CR_TSMX_GND | UCB_TS_CR_TSPX_POW |
			UCB_TS_CR_MODE_PRES | UCB_TS_CR_BIAS_ENA);
	FUNC1(ucb->ac97, UCB_TS_CR,
			UCB_TS_CR_TSMX_GND | UCB_TS_CR_TSPX_POW |
			UCB_TS_CR_MODE_PRES | UCB_TS_CR_BIAS_ENA);
	FUNC1(ucb->ac97, UCB_TS_CR,
			UCB_TS_CR_TSMX_GND | UCB_TS_CR_TSPX_POW |
			UCB_TS_CR_MODE_POS | UCB_TS_CR_BIAS_ENA);

	FUNC2(ts_delay);

	return FUNC0(ucb->ac97, UCB_ADC_INP_TSPY, adcsync);
}