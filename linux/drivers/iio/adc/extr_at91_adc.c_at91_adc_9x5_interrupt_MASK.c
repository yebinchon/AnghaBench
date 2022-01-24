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
typedef  int uint32_t ;
typedef  int u32 ;
struct iio_dev {int dummy; } ;
struct at91_adc_state {int /*<<< orphan*/  ts_input; TYPE_1__* registers; int /*<<< orphan*/  ts_sample_period_val; scalar_t__ num_channels; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  trigger_register; int /*<<< orphan*/  status_register; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_ADC_IDR ; 
 int /*<<< orphan*/  AT91_ADC_IER ; 
 int const AT91_ADC_IER_NOPEN ; 
 int AT91_ADC_IER_PEN ; 
 int AT91_ADC_IER_PRDY ; 
 int AT91_ADC_IER_XRDY ; 
 int AT91_ADC_IER_YRDY ; 
 int AT91_ADC_ISR_PENS ; 
 int AT91_ADC_TRGR_MOD_PERIOD_TRIG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AT91_ADC_TSPRESSR ; 
 int /*<<< orphan*/  AT91_ADC_TSXPOSR ; 
 int /*<<< orphan*/  AT91_ADC_TSYPOSR ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC2 (struct at91_adc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct at91_adc_state*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC4 (struct at91_adc_state*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct iio_dev*) ; 
 struct at91_adc_state* FUNC6 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *private)
{
	struct iio_dev *idev = private;
	struct at91_adc_state *st = FUNC6(idev);
	u32 status = FUNC2(st, st->registers->status_register);
	const uint32_t ts_data_irq_mask =
		AT91_ADC_IER_XRDY |
		AT91_ADC_IER_YRDY |
		AT91_ADC_IER_PRDY;

	if (status & FUNC1(st->num_channels - 1, 0))
		FUNC5(irq, idev);

	if (status & AT91_ADC_IER_PEN) {
		FUNC3(st, AT91_ADC_IDR, AT91_ADC_IER_PEN);
		FUNC3(st, AT91_ADC_IER, AT91_ADC_IER_NOPEN |
			ts_data_irq_mask);
		/* Set up period trigger for sampling */
		FUNC3(st, st->registers->trigger_register,
			AT91_ADC_TRGR_MOD_PERIOD_TRIG |
			FUNC0(st->ts_sample_period_val));
	} else if (status & AT91_ADC_IER_NOPEN) {
		FUNC3(st, st->registers->trigger_register, 0);
		FUNC3(st, AT91_ADC_IDR, AT91_ADC_IER_NOPEN |
			ts_data_irq_mask);
		FUNC3(st, AT91_ADC_IER, AT91_ADC_IER_PEN);

		FUNC7(st->ts_input, BTN_TOUCH, 0);
		FUNC8(st->ts_input);
	} else if ((status & ts_data_irq_mask) == ts_data_irq_mask) {
		/* Now all touchscreen data is ready */

		if (status & AT91_ADC_ISR_PENS) {
			/* validate data by pen contact */
			FUNC4(st);
		} else {
			/* triggered by event that is no pen contact, just read
			 * them to clean the interrupt and discard all.
			 */
			FUNC2(st, AT91_ADC_TSXPOSR);
			FUNC2(st, AT91_ADC_TSYPOSR);
			FUNC2(st, AT91_ADC_TSPRESSR);
		}
	}

	return IRQ_HANDLED;
}