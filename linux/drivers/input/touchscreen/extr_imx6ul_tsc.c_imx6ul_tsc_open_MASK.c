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
struct imx6ul_tsc {int /*<<< orphan*/  adc_clk; int /*<<< orphan*/  tsc_clk; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct imx6ul_tsc*) ; 
 struct imx6ul_tsc* FUNC4 (struct input_dev*) ; 

__attribute__((used)) static int FUNC5(struct input_dev *input_dev)
{
	struct imx6ul_tsc *tsc = FUNC4(input_dev);
	int err;

	err = FUNC1(tsc->adc_clk);
	if (err) {
		FUNC2(tsc->dev,
			"Could not prepare or enable the adc clock: %d\n",
			err);
		return err;
	}

	err = FUNC1(tsc->tsc_clk);
	if (err) {
		FUNC2(tsc->dev,
			"Could not prepare or enable the tsc clock: %d\n",
			err);
		goto disable_adc_clk;
	}

	err = FUNC3(tsc);
	if (err)
		goto disable_tsc_clk;

	return 0;

disable_tsc_clk:
	FUNC0(tsc->tsc_clk);
disable_adc_clk:
	FUNC0(tsc->adc_clk);
	return err;
}