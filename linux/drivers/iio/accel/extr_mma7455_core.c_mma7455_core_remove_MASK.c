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
struct mma7455_data {int /*<<< orphan*/  regmap; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMA7455_MCTL_MODE_STANDBY ; 
 int /*<<< orphan*/  MMA7455_REG_MCTL ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct mma7455_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct device *dev)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct mma7455_data *mma7455 = FUNC2(indio_dev);

	FUNC1(indio_dev);
	FUNC3(indio_dev);

	FUNC4(mma7455->regmap, MMA7455_REG_MCTL,
		     MMA7455_MCTL_MODE_STANDBY);

	return 0;
}