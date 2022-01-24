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
struct iio_dev {int /*<<< orphan*/  trig; } ;
struct at91_adc_state {int done; int /*<<< orphan*/  wq_data_avail; int /*<<< orphan*/  chnb; int /*<<< orphan*/  last_value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct at91_adc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AT91_ADC_LCDR ; 
 int /*<<< orphan*/  FUNC1 (struct at91_adc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct iio_dev*) ; 
 struct at91_adc_state* FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(int irq, struct iio_dev *idev)
{
	struct at91_adc_state *st = FUNC4(idev);

	if (FUNC3(idev)) {
		FUNC2(irq);
		FUNC5(idev->trig);
	} else {
		st->last_value = FUNC1(st, FUNC0(st, st->chnb));
		/* Needed to ACK the DRDY interruption */
		FUNC1(st, AT91_ADC_LCDR);
		st->done = true;
		FUNC6(&st->wq_data_avail);
	}
}