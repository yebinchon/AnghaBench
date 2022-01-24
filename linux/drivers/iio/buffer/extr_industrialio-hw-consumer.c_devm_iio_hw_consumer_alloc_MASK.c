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
struct iio_hw_consumer {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct iio_hw_consumer*) ; 
 int /*<<< orphan*/  devm_iio_hw_consumer_release ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct iio_hw_consumer**) ; 
 struct iio_hw_consumer** FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iio_hw_consumer**) ; 
 struct iio_hw_consumer* FUNC4 (struct device*) ; 

struct iio_hw_consumer *FUNC5(struct device *dev)
{
	struct iio_hw_consumer **ptr, *iio_hwc;

	ptr = FUNC2(devm_iio_hw_consumer_release, sizeof(*ptr),
			   GFP_KERNEL);
	if (!ptr)
		return NULL;

	iio_hwc = FUNC4(dev);
	if (FUNC0(iio_hwc)) {
		FUNC3(ptr);
	} else {
		*ptr = iio_hwc;
		FUNC1(dev, ptr);
	}

	return iio_hwc;
}