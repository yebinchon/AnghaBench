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
struct input_dev {int /*<<< orphan*/  led; } ;
struct applespi_data {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  EV_LED 128 
 int /*<<< orphan*/  LED_CAPSL ; 
 int /*<<< orphan*/  FUNC0 (struct applespi_data*,int) ; 
 struct applespi_data* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct input_dev *dev, unsigned int type,
			  unsigned int code, int value)
{
	struct applespi_data *applespi = FUNC1(dev);

	switch (type) {
	case EV_LED:
		FUNC0(applespi, !!FUNC2(LED_CAPSL, dev->led));
		return 0;
	}

	return -EINVAL;
}