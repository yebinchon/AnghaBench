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
struct tsl2772_chip {int /*<<< orphan*/  supplies; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TSL2772_BOOT_MAX_SLEEP_TIME ; 
 int /*<<< orphan*/  TSL2772_BOOT_MIN_SLEEP_TIME ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 struct tsl2772_chip* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct iio_dev *indio_dev = FUNC1(dev);
	struct tsl2772_chip *chip = FUNC2(indio_dev);
	int ret;

	ret = FUNC3(FUNC0(chip->supplies), chip->supplies);
	if (ret < 0)
		return ret;

	FUNC5(TSL2772_BOOT_MIN_SLEEP_TIME, TSL2772_BOOT_MAX_SLEEP_TIME);

	return FUNC4(indio_dev);
}