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
struct input_dev {int dummy; } ;
struct da9052_tsi {int stopped; int /*<<< orphan*/  da9052; scalar_t__ adc_on; int /*<<< orphan*/  ts_pen_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9052_IRQ_PENDOWN ; 
 int /*<<< orphan*/  DA9052_IRQ_TSIREADY ; 
 int /*<<< orphan*/  DA9052_TSI_CONT_A_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct da9052_tsi*,int) ; 
 struct da9052_tsi* FUNC5 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct input_dev *input_dev)
{
	struct da9052_tsi *tsi = FUNC5(input_dev);

	tsi->stopped = true;
	FUNC6();
	FUNC1(tsi->da9052, DA9052_IRQ_PENDOWN);
	FUNC0(&tsi->ts_pen_work);

	if (tsi->adc_on) {
		FUNC1(tsi->da9052, DA9052_IRQ_TSIREADY);
		FUNC4(tsi, false);

		/*
		 * If ADC was on that means that pendwn IRQ was disabled
		 * twice and we need to enable it to keep enable/disable
		 * counter balanced. IRQ is still off though.
		 */
		FUNC2(tsi->da9052, DA9052_IRQ_PENDOWN);
	}

	/* Disable Pen Detect Circuit */
	FUNC3(tsi->da9052, DA9052_TSI_CONT_A_REG, 1 << 1, 0);
}