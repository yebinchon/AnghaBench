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
struct pixcir_i2c_ts_data {int running; scalar_t__ gpio_enable; TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct pixcir_i2c_ts_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct pixcir_i2c_ts_data *ts)
{
	int error;

	/* Disable interrupt generation */
	error = FUNC3(ts, false);
	if (error) {
		FUNC0(&ts->client->dev,
			"Failed to disable interrupt generation: %d\n",
			error);
		return error;
	}

	/* Exit ISR if running, no more report parsing */
	ts->running = false;
	FUNC2();	/* update status before we synchronize irq */

	/* Wait till running ISR is complete */
	FUNC4(ts->client->irq);

	if (ts->gpio_enable)
		FUNC1(ts->gpio_enable, 0);

	return 0;
}