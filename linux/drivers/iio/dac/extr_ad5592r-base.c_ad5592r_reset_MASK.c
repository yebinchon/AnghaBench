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
struct iio_dev {int /*<<< orphan*/  mlock; } ;
struct gpio_desc {int dummy; } ;
struct ad5592r_state {TYPE_1__* ops; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* reg_write ) (struct ad5592r_state*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AD5592R_REG_RESET ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int FUNC1 (struct gpio_desc*) ; 
 struct gpio_desc* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_desc*,int) ; 
 struct iio_dev* FUNC4 (struct ad5592r_state*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ad5592r_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct ad5592r_state *st)
{
	struct gpio_desc *gpio;
	struct iio_dev *iio_dev = FUNC4(st);

	gpio = FUNC2(st->dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(gpio))
		return FUNC1(gpio);

	if (gpio) {
		FUNC8(1);
		FUNC3(gpio, 1);
	} else {
		FUNC5(&iio_dev->mlock);
		/* Writing this magic value resets the device */
		st->ops->reg_write(st, AD5592R_REG_RESET, 0xdac);
		FUNC6(&iio_dev->mlock);
	}

	FUNC8(250);

	return 0;
}