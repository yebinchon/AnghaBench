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
struct bmp280_data {int /*<<< orphan*/  vddd; int /*<<< orphan*/  vdda; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct iio_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct iio_dev*) ; 
 struct bmp280_data* FUNC2 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct device *dev)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct bmp280_data *data = FUNC2(indio_dev);

	FUNC1(indio_dev);
	FUNC4(data->dev);
	FUNC5(data->dev);
	FUNC3(data->dev);
	FUNC6(data->vdda);
	FUNC6(data->vddd);
	return 0;
}