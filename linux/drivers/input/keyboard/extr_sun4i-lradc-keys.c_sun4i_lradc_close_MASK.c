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
struct sun4i_lradc_data {int /*<<< orphan*/  vref_supply; scalar_t__ base; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 scalar_t__ LRADC_CTRL ; 
 scalar_t__ LRADC_INTC ; 
 int FUNC3 (int) ; 
 struct sun4i_lradc_data* FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct input_dev *dev)
{
	struct sun4i_lradc_data *lradc = FUNC4(dev);

	/* Disable lradc, leave other settings unchanged */
	FUNC6(FUNC0(2) | FUNC2(1) | FUNC1(1) |
		FUNC3(2), lradc->base + LRADC_CTRL);
	FUNC6(0, lradc->base + LRADC_INTC);

	FUNC5(lradc->vref_supply);
}