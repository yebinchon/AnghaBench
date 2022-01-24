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
struct mxs_lradc_adc {scalar_t__ base; int /*<<< orphan*/  completion; int /*<<< orphan*/  lock; struct mxs_lradc* lradc; } ;
struct mxs_lradc {unsigned long buffer_vchans; } ;
struct iio_dev {int /*<<< orphan*/  trig; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ LRADC_CTRL1 ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ STMP_OFFSET_REG_CLR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct iio_dev*) ; 
 struct mxs_lradc_adc* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (struct mxs_lradc*) ; 
 unsigned long FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *data)
{
	struct iio_dev *iio = data;
	struct mxs_lradc_adc *adc = FUNC3(iio);
	struct mxs_lradc *lradc = adc->lradc;
	unsigned long reg = FUNC6(adc->base + LRADC_CTRL1);
	unsigned long flags;

	if (!(reg & FUNC5(lradc)))
		return IRQ_NONE;

	if (FUNC2(iio)) {
		if (reg & lradc->buffer_vchans) {
			FUNC7(&adc->lock, flags);
			FUNC4(iio->trig);
			FUNC8(&adc->lock, flags);
		}
	} else if (reg & FUNC0(0)) {
		FUNC1(&adc->completion);
	}

	FUNC9(reg & FUNC5(lradc),
	       adc->base + LRADC_CTRL1 + STMP_OFFSET_REG_CLR);

	return IRQ_HANDLED;
}