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
struct imx7d_adc {int /*<<< orphan*/  vref; int /*<<< orphan*/  dev; int /*<<< orphan*/  clk; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct iio_dev* FUNC2 (struct device*) ; 
 struct imx7d_adc* FUNC3 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct imx7d_adc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct iio_dev *indio_dev = FUNC2(dev);
	struct imx7d_adc *info = FUNC3(indio_dev);
	int ret;

	ret = FUNC6(info->vref);
	if (ret) {
		FUNC1(info->dev,
			"Can't enable adc reference top voltage, err = %d\n",
			ret);
		return ret;
	}

	ret = FUNC0(info->clk);
	if (ret) {
		FUNC1(info->dev,
			"Could not prepare or enable clock.\n");
		FUNC5(info->vref);
		return ret;
	}

	FUNC4(info);

	return 0;
}