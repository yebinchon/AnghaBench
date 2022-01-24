#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stm32_adc {int /*<<< orphan*/  num_conv; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {int /*<<< orphan*/  masklength; TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long const*,int /*<<< orphan*/ ) ; 
 struct stm32_adc* FUNC1 (struct iio_dev*) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int FUNC6 (struct iio_dev*,unsigned long const*) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
				      const unsigned long *scan_mask)
{
	struct stm32_adc *adc = FUNC1(indio_dev);
	struct device *dev = indio_dev->dev.parent;
	int ret;

	ret = FUNC2(dev);
	if (ret < 0) {
		FUNC5(dev);
		return ret;
	}

	adc->num_conv = FUNC0(scan_mask, indio_dev->masklength);

	ret = FUNC6(indio_dev, scan_mask);
	FUNC3(dev);
	FUNC4(dev);

	return ret;
}