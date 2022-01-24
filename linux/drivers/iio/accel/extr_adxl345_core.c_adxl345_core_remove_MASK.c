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
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;
struct adxl345_data {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADXL345_POWER_CTL_STANDBY ; 
 int /*<<< orphan*/  ADXL345_REG_POWER_CTL ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct adxl345_data* FUNC2 (struct iio_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct device *dev)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct adxl345_data *data = FUNC2(indio_dev);

	FUNC1(indio_dev);

	return FUNC3(data->regmap, ADXL345_REG_POWER_CTL,
			    ADXL345_POWER_CTL_STANDBY);
}