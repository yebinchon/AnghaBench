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
struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct hx711_data {int /*<<< orphan*/  reg_avdd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iio_dev*) ; 
 struct hx711_data* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev*) ; 
 struct iio_dev* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct hx711_data *hx711_data;
	struct iio_dev *indio_dev;

	indio_dev = FUNC3(pdev);
	hx711_data = FUNC1(indio_dev);

	FUNC0(indio_dev);

	FUNC2(indio_dev);

	FUNC4(hx711_data->reg_avdd);

	return 0;
}