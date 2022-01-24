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
struct pixcir_report_data {scalar_t__ num_touches; } ;
struct pixcir_i2c_ts_data {int /*<<< orphan*/  input; int /*<<< orphan*/  gpio_attb; scalar_t__ running; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct pixcir_i2c_ts_data*,struct pixcir_report_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct pixcir_i2c_ts_data*,struct pixcir_report_data*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct pixcir_i2c_ts_data *tsdata = dev_id;
	struct pixcir_report_data report;

	while (tsdata->running) {
		/* parse packet */
		FUNC4(tsdata, &report);

		/* report it */
		FUNC5(tsdata, &report);

		if (FUNC0(tsdata->gpio_attb)) {
			if (report.num_touches) {
				/*
				 * Last report with no finger up?
				 * Do it now then.
				 */
				FUNC1(tsdata->input);
				FUNC2(tsdata->input);
			}
			break;
		}

		FUNC3(20);
	}

	return IRQ_HANDLED;
}