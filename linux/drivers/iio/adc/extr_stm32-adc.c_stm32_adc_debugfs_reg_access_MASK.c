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
struct stm32_adc {int dummy; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_dev {TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct stm32_adc* FUNC0 (struct iio_dev*) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 unsigned int FUNC5 (struct stm32_adc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct stm32_adc*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct iio_dev *indio_dev,
					unsigned reg, unsigned writeval,
					unsigned *readval)
{
	struct stm32_adc *adc = FUNC0(indio_dev);
	struct device *dev = indio_dev->dev.parent;
	int ret;

	ret = FUNC1(dev);
	if (ret < 0) {
		FUNC4(dev);
		return ret;
	}

	if (!readval)
		FUNC6(adc, reg, writeval);
	else
		*readval = FUNC5(adc, reg);

	FUNC2(dev);
	FUNC3(dev);

	return 0;
}