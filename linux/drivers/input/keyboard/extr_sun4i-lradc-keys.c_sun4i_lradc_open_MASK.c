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
struct sun4i_lradc_data {int vref; scalar_t__ base; TYPE_1__* variant; int /*<<< orphan*/  vref_supply; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int divisor_numerator; int divisor_denominator; } ;

/* Variables and functions */
 int CHAN0_KEYDOWN_IRQ ; 
 int CHAN0_KEYUP_IRQ ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ LRADC_CTRL ; 
 scalar_t__ LRADC_INTC ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct sun4i_lradc_data* FUNC5 (struct input_dev*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct input_dev *dev)
{
	struct sun4i_lradc_data *lradc = FUNC5(dev);
	int error;

	error = FUNC6(lradc->vref_supply);
	if (error)
		return error;

	lradc->vref = FUNC7(lradc->vref_supply) *
		      lradc->variant->divisor_numerator /
		      lradc->variant->divisor_denominator;
	/*
	 * Set sample time to 4 ms / 250 Hz. Wait 2 * 4 ms for key to
	 * stabilize on press, wait (1 + 1) * 4 ms for key release
	 */
	FUNC8(FUNC1(2) | FUNC3(1) | FUNC2(1) |
		FUNC4(0) | FUNC0(1), lradc->base + LRADC_CTRL);

	FUNC8(CHAN0_KEYUP_IRQ | CHAN0_KEYDOWN_IRQ, lradc->base + LRADC_INTC);

	return 0;
}