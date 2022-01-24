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
struct iio_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  startup_time; } ;
struct at91_adc_state {unsigned int current_sample_rate; TYPE_1__ soc_info; int /*<<< orphan*/  per_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_SAMA5D2_MR ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int AT91_SAMA5D2_MR_PRESCAL_MASK ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int AT91_SAMA5D2_MR_STARTUP_MASK ; 
 unsigned int FUNC2 (struct at91_adc_state*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct at91_adc_state*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int,unsigned int) ; 
 struct iio_dev* FUNC7 (struct at91_adc_state*) ; 

__attribute__((used)) static void FUNC8(struct at91_adc_state *st, unsigned freq)
{
	struct iio_dev *indio_dev = FUNC7(st);
	unsigned f_per, prescal, startup, mr;

	f_per = FUNC5(st->per_clk);
	prescal = (f_per / (2 * freq)) - 1;

	startup = FUNC3(st->soc_info.startup_time,
					freq / 1000);

	mr = FUNC2(st, AT91_SAMA5D2_MR);
	mr &= ~(AT91_SAMA5D2_MR_STARTUP_MASK | AT91_SAMA5D2_MR_PRESCAL_MASK);
	mr |= FUNC1(startup);
	mr |= FUNC0(prescal);
	FUNC4(st, AT91_SAMA5D2_MR, mr);

	FUNC6(&indio_dev->dev, "freq: %u, startup: %u, prescal: %u\n",
		freq, startup, prescal);
	st->current_sample_rate = freq;
}