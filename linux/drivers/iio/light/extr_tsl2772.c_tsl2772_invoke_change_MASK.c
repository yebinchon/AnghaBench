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
struct tsl2772_chip {int tsl2772_chip_status; int /*<<< orphan*/  als_mutex; int /*<<< orphan*/  prox_mutex; } ;
struct iio_dev {int dummy; } ;

/* Variables and functions */
 int TSL2772_CHIP_WORKING ; 
 struct tsl2772_chip* FUNC0 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct iio_dev*) ; 
 int FUNC4 (struct iio_dev*) ; 

__attribute__((used)) static int FUNC5(struct iio_dev *indio_dev)
{
	struct tsl2772_chip *chip = FUNC0(indio_dev);
	int device_status = chip->tsl2772_chip_status;
	int ret;

	FUNC1(&chip->als_mutex);
	FUNC1(&chip->prox_mutex);

	if (device_status == TSL2772_CHIP_WORKING) {
		ret = FUNC3(indio_dev);
		if (ret < 0)
			goto unlock;
	}

	ret = FUNC4(indio_dev);

unlock:
	FUNC2(&chip->prox_mutex);
	FUNC2(&chip->als_mutex);

	return ret;
}