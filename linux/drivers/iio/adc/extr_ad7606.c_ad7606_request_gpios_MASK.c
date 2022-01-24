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
struct device {int dummy; } ;
struct ad7606_state {int /*<<< orphan*/  gpio_os; TYPE_1__* chip_info; void* gpio_frstdata; void* gpio_standby; void* gpio_range; void* gpio_reset; void* gpio_convst; struct device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  oversampling_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ad7606_state *st)
{
	struct device *dev = st->dev;

	st->gpio_convst = FUNC3(dev, "adi,conversion-start",
					 GPIOD_OUT_LOW);
	if (FUNC0(st->gpio_convst))
		return FUNC1(st->gpio_convst);

	st->gpio_reset = FUNC5(dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(st->gpio_reset))
		return FUNC1(st->gpio_reset);

	st->gpio_range = FUNC5(dev, "adi,range",
						 GPIOD_OUT_LOW);
	if (FUNC0(st->gpio_range))
		return FUNC1(st->gpio_range);

	st->gpio_standby = FUNC5(dev, "standby",
						   GPIOD_OUT_HIGH);
	if (FUNC0(st->gpio_standby))
		return FUNC1(st->gpio_standby);

	st->gpio_frstdata = FUNC5(dev, "adi,first-data",
						    GPIOD_IN);
	if (FUNC0(st->gpio_frstdata))
		return FUNC1(st->gpio_frstdata);

	if (!st->chip_info->oversampling_num)
		return 0;

	st->gpio_os = FUNC4(dev,
						    "adi,oversampling-ratio",
						    GPIOD_OUT_LOW);
	return FUNC2(st->gpio_os);
}