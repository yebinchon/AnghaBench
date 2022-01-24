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
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIXCIR_INT_LEVEL_TOUCH ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct pixcir_i2c_ts_data*,int) ; 
 int FUNC5 (struct pixcir_i2c_ts_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pixcir_i2c_ts_data *ts)
{
	struct device *dev = &ts->client->dev;
	int error;

	if (ts->gpio_enable) {
		FUNC1(ts->gpio_enable, 1);
		FUNC3(100);
	}

	/* LEVEL_TOUCH interrupt with active low polarity */
	error = FUNC5(ts, PIXCIR_INT_LEVEL_TOUCH, 0);
	if (error) {
		FUNC0(dev, "Failed to set interrupt mode: %d\n", error);
		return error;
	}

	ts->running = true;
	FUNC2();	/* Update status before IRQ can fire */

	/* enable interrupt generation */
	error = FUNC4(ts, true);
	if (error) {
		FUNC0(dev, "Failed to enable interrupt generation: %d\n",
			error);
		return error;
	}

	return 0;
}