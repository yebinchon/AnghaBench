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
typedef  int u32 ;
struct iio_dev {int dummy; } ;
struct at91_adc_state {int ts_bufferedmeasure; int ts_prev_absx; int ts_prev_absy; scalar_t__ ts_input; TYPE_1__* registers; int /*<<< orphan*/  ts_pendbc; int /*<<< orphan*/  ts_sample_period_val; scalar_t__ num_channels; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  trigger_register; int /*<<< orphan*/  status_register; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int AT91RL_ADC_IER_NOPEN ; 
 int AT91RL_ADC_IER_PEN ; 
 int /*<<< orphan*/  FUNC0 (struct at91_adc_state*,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  AT91_ADC_IDR ; 
 int /*<<< orphan*/  AT91_ADC_IER ; 
 int /*<<< orphan*/  AT91_ADC_IMR ; 
 int /*<<< orphan*/  AT91_ADC_MR ; 
 unsigned int AT91_ADC_PENDBC ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int AT91_ADC_TRGR_MOD_PERIOD_TRIG ; 
 int AT91_ADC_TRGR_NONE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTN_TOUCH ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MAX_RLPOS_BITS ; 
 int FUNC5 (struct at91_adc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct at91_adc_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,struct iio_dev*) ; 
 struct at91_adc_state* FUNC8 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *private)
{
	struct iio_dev *idev = private;
	struct at91_adc_state *st = FUNC8(idev);
	u32 status = FUNC5(st, st->registers->status_register);
	unsigned int reg;

	status &= FUNC5(st, AT91_ADC_IMR);
	if (status & FUNC4(st->num_channels - 1, 0))
		FUNC7(irq, idev);

	if (status & AT91RL_ADC_IER_PEN) {
		/* Disabling pen debounce is required to get a NOPEN irq */
		reg = FUNC5(st, AT91_ADC_MR);
		reg &= ~AT91_ADC_PENDBC;
		FUNC6(st, AT91_ADC_MR, reg);

		FUNC6(st, AT91_ADC_IDR, AT91RL_ADC_IER_PEN);
		FUNC6(st, AT91_ADC_IER, AT91RL_ADC_IER_NOPEN
				| FUNC1(3));
		/* Set up period trigger for sampling */
		FUNC6(st, st->registers->trigger_register,
			AT91_ADC_TRGR_MOD_PERIOD_TRIG |
			FUNC3(st->ts_sample_period_val));
	} else if (status & AT91RL_ADC_IER_NOPEN) {
		reg = FUNC5(st, AT91_ADC_MR);
		reg |= FUNC2(st->ts_pendbc) & AT91_ADC_PENDBC;
		FUNC6(st, AT91_ADC_MR, reg);
		FUNC6(st, st->registers->trigger_register,
			AT91_ADC_TRGR_NONE);

		FUNC6(st, AT91_ADC_IDR, AT91RL_ADC_IER_NOPEN
				| FUNC1(3));
		FUNC6(st, AT91_ADC_IER, AT91RL_ADC_IER_PEN);
		st->ts_bufferedmeasure = false;
		FUNC10(st->ts_input, BTN_TOUCH, 0);
		FUNC11(st->ts_input);
	} else if (status & FUNC1(3) && st->ts_input) {
		/* Conversion finished and we've a touchscreen */
		if (st->ts_bufferedmeasure) {
			/*
			 * Last measurement is always discarded, since it can
			 * be erroneous.
			 * Always report previous measurement
			 */
			FUNC9(st->ts_input, ABS_X, st->ts_prev_absx);
			FUNC9(st->ts_input, ABS_Y, st->ts_prev_absy);
			FUNC10(st->ts_input, BTN_TOUCH, 1);
			FUNC11(st->ts_input);
		} else
			st->ts_bufferedmeasure = true;

		/* Now make new measurement */
		st->ts_prev_absx = FUNC5(st, FUNC0(st, 3))
				   << MAX_RLPOS_BITS;
		st->ts_prev_absx /= FUNC5(st, FUNC0(st, 2));

		st->ts_prev_absy = FUNC5(st, FUNC0(st, 1))
				   << MAX_RLPOS_BITS;
		st->ts_prev_absy /= FUNC5(st, FUNC0(st, 0));
	}

	return IRQ_HANDLED;
}