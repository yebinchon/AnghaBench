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
struct ti_dac_chip {int powerdown; int /*<<< orphan*/  lock; int /*<<< orphan*/ * val; int /*<<< orphan*/  powerdown_mode; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ti_dac_chip* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,int*) ; 
 int FUNC6 (struct ti_dac_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC7(struct iio_dev *indio_dev,
				      uintptr_t private,
				      const struct iio_chan_spec *chan,
				      const char *buf, size_t len)
{
	struct ti_dac_chip *ti_dac = FUNC2(indio_dev);
	bool powerdown;
	int ret;

	ret = FUNC5(buf, &powerdown);
	if (ret)
		return ret;

	if (ti_dac->powerdown == powerdown)
		return len;

	FUNC3(&ti_dac->lock);
	if (powerdown)
		ret = FUNC6(ti_dac, FUNC0(ti_dac->powerdown_mode), 0);
	else
		ret = FUNC6(ti_dac, FUNC1(0), ti_dac->val[0]);
	if (!ret)
		ti_dac->powerdown = powerdown;
	FUNC4(&ti_dac->lock);

	return ret ? ret : len;
}