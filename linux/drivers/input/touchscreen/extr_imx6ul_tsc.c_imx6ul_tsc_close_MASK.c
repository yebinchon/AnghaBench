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
struct imx6ul_tsc {int /*<<< orphan*/  adc_clk; int /*<<< orphan*/  tsc_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx6ul_tsc*) ; 
 struct imx6ul_tsc* FUNC2 (struct input_dev*) ; 

__attribute__((used)) static void FUNC3(struct input_dev *input_dev)
{
	struct imx6ul_tsc *tsc = FUNC2(input_dev);

	FUNC1(tsc);

	FUNC0(tsc->tsc_clk);
	FUNC0(tsc->adc_clk);
}