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
struct iio_channel {int dummy; } ;
struct gpio_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLI_TOUCH_MAX_DELAY_US ; 
 int /*<<< orphan*/  COLI_TOUCH_MIN_DELAY_US ; 
 int COLI_TOUCH_NO_OF_AVGS ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_desc*,int) ; 
 int FUNC1 (struct iio_channel*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct iio_channel *channel,
			  struct gpio_desc *plate_p, struct gpio_desc *plate_m)
{
	int i, value = 0, val = 0;
	int error;

	FUNC0(plate_p, 1);
	FUNC0(plate_m, 1);

	FUNC2(COLI_TOUCH_MIN_DELAY_US, COLI_TOUCH_MAX_DELAY_US);

	for (i = 0; i < COLI_TOUCH_NO_OF_AVGS; i++) {
		error = FUNC1(channel, &val);
		if (error < 0) {
			value = error;
			goto error_iio_read;
		}

		value += val;
	}

	value /= COLI_TOUCH_NO_OF_AVGS;

error_iio_read:
	FUNC0(plate_p, 0);
	FUNC0(plate_m, 0);

	return value;
}