#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mxs_lradc_ts {scalar_t__ base; struct mxs_lradc* lradc; } ;
struct mxs_lradc {size_t soc; int buffer_vchans; } ;
struct TYPE_2__ {int mask; } ;

/* Variables and functions */
 scalar_t__ LRADC_CTRL0 ; 
 scalar_t__ LRADC_CTRL1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int LRADC_CTRL1_LRADC_IRQ_EN_OFFSET ; 
 int LRADC_CTRL1_TOUCH_DETECT_IRQ_EN ; 
 scalar_t__ FUNC1 (int) ; 
 int LRADC_MAX_DELAY_CHANS ; 
 scalar_t__ STMP_OFFSET_REG_CLR ; 
 int /*<<< orphan*/  TOUCHSCREEN_VCHANNEL1 ; 
 int /*<<< orphan*/  TOUCHSCREEN_VCHANNEL2 ; 
 TYPE_1__* info ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mxs_lradc_ts *ts)
{
	int i;
	struct mxs_lradc *lradc = ts->lradc;

	/* stop all interrupts from firing */
	FUNC2(LRADC_CTRL1_TOUCH_DETECT_IRQ_EN |
	       FUNC0(TOUCHSCREEN_VCHANNEL1) |
	       FUNC0(TOUCHSCREEN_VCHANNEL2),
	       ts->base + LRADC_CTRL1 + STMP_OFFSET_REG_CLR);

	/* Power-down touchscreen touch-detect circuitry. */
	FUNC2(info[lradc->soc].mask,
	       ts->base + LRADC_CTRL0 + STMP_OFFSET_REG_CLR);

	FUNC2(lradc->buffer_vchans << LRADC_CTRL1_LRADC_IRQ_EN_OFFSET,
	       ts->base + LRADC_CTRL1 + STMP_OFFSET_REG_CLR);

	for (i = 1; i < LRADC_MAX_DELAY_CHANS; i++)
		FUNC2(0, ts->base + FUNC1(i));
}