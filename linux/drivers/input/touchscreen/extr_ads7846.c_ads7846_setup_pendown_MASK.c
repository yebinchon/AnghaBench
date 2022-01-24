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
struct spi_device {int /*<<< orphan*/  dev; } ;
struct ads7846_platform_data {scalar_t__ gpio_pendown_debounce; int /*<<< orphan*/  gpio_pendown; scalar_t__ get_pendown_state; } ;
struct ads7846 {int /*<<< orphan*/  gpio_pendown; scalar_t__ get_pendown_state; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GPIOF_IN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct spi_device *spi,
				 struct ads7846 *ts,
				 const struct ads7846_platform_data *pdata)
{
	int err;

	/*
	 * REVISIT when the irq can be triggered active-low, or if for some
	 * reason the touchscreen isn't hooked up, we don't need to access
	 * the pendown state.
	 */

	if (pdata->get_pendown_state) {
		ts->get_pendown_state = pdata->get_pendown_state;
	} else if (FUNC1(pdata->gpio_pendown)) {

		err = FUNC2(pdata->gpio_pendown, GPIOF_IN,
				       "ads7846_pendown");
		if (err) {
			FUNC0(&spi->dev,
				"failed to request/setup pendown GPIO%d: %d\n",
				pdata->gpio_pendown, err);
			return err;
		}

		ts->gpio_pendown = pdata->gpio_pendown;

		if (pdata->gpio_pendown_debounce)
			FUNC3(pdata->gpio_pendown,
					  pdata->gpio_pendown_debounce);
	} else {
		FUNC0(&spi->dev, "no get_pendown_state nor gpio_pendown?\n");
		return -EINVAL;
	}

	return 0;
}