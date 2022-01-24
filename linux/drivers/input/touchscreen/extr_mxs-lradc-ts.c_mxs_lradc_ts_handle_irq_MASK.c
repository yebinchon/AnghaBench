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
typedef  unsigned long u32 ;
struct mxs_lradc_ts {scalar_t__ base; int /*<<< orphan*/  lock; struct mxs_lradc* lradc; } ;
struct mxs_lradc {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ LRADC_CTRL1 ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long LRADC_CTRL1_TOUCH_DETECT_IRQ ; 
 scalar_t__ STMP_OFFSET_REG_CLR ; 
 int /*<<< orphan*/  TOUCHSCREEN_VCHANNEL1 ; 
 int /*<<< orphan*/  TOUCHSCREEN_VCHANNEL2 ; 
 int /*<<< orphan*/  FUNC1 (struct mxs_lradc_ts*) ; 
 unsigned long FUNC2 (struct mxs_lradc*) ; 
 unsigned long FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct mxs_lradc_ts *ts = data;
	struct mxs_lradc *lradc = ts->lradc;
	unsigned long reg = FUNC3(ts->base + LRADC_CTRL1);
	u32 clr_irq = FUNC2(lradc);
	const u32 ts_irq_mask =
		LRADC_CTRL1_TOUCH_DETECT_IRQ |
		FUNC0(TOUCHSCREEN_VCHANNEL1) |
		FUNC0(TOUCHSCREEN_VCHANNEL2);
	unsigned long flags;

	if (!(reg & FUNC2(lradc)))
		return IRQ_NONE;

	if (reg & ts_irq_mask) {
		FUNC4(&ts->lock, flags);
		FUNC1(ts);
		FUNC5(&ts->lock, flags);
		/* Make sure we don't clear the next conversion's interrupt. */
		clr_irq &= ~(FUNC0(TOUCHSCREEN_VCHANNEL1) |
				FUNC0(TOUCHSCREEN_VCHANNEL2));
		FUNC6(reg & clr_irq,
		       ts->base + LRADC_CTRL1 + STMP_OFFSET_REG_CLR);
	}

	return IRQ_HANDLED;
}