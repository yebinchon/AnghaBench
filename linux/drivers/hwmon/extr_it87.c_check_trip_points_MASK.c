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
struct it87_data {scalar_t__** auto_temp; scalar_t__** auto_pwm; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct it87_data* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct it87_data const*) ; 
 scalar_t__ FUNC3 (struct it87_data const*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, int nr)
{
	const struct it87_data *data = FUNC1(dev);
	int i, err = 0;

	if (FUNC3(data)) {
		for (i = 0; i < 3; i++) {
			if (data->auto_temp[nr][i] > data->auto_temp[nr][i + 1])
				err = -EINVAL;
		}
		for (i = 0; i < 2; i++) {
			if (data->auto_pwm[nr][i] > data->auto_pwm[nr][i + 1])
				err = -EINVAL;
		}
	} else if (FUNC2(data)) {
		for (i = 1; i < 3; i++) {
			if (data->auto_temp[nr][i] > data->auto_temp[nr][i + 1])
				err = -EINVAL;
		}
	}

	if (err) {
		FUNC0(dev,
			"Inconsistent trip points, not switching to automatic mode\n");
		FUNC0(dev, "Adjust the trip points and try again\n");
	}
	return err;
}