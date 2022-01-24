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
typedef  int /*<<< orphan*/  u8 ;
struct ti_dac_chip {int powerdown; int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct ti_dac_chip* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,int*) ; 
 int FUNC4 (struct ti_dac_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ti_dac_chip*,int) ; 

__attribute__((used)) static ssize_t FUNC6(struct iio_dev *indio_dev,
				      uintptr_t private,
				      const struct iio_chan_spec *chan,
				      const char *buf, size_t len)
{
	struct ti_dac_chip *ti_dac = FUNC0(indio_dev);
	bool powerdown;
	u8 power;
	int ret;

	ret = FUNC3(buf, &powerdown);
	if (ret)
		return ret;

	power = FUNC5(ti_dac, powerdown);

	FUNC1(&ti_dac->lock);
	ret = FUNC4(ti_dac, power, 0);
	if (!ret)
		ti_dac->powerdown = powerdown;
	FUNC2(&ti_dac->lock);

	return ret ? ret : len;
}