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

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_iio_device_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct iio_dev**) ; 
 struct iio_dev** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iio_dev**) ; 
 struct iio_dev* FUNC3 (int) ; 

struct iio_dev *FUNC4(struct device *dev, int sizeof_priv)
{
	struct iio_dev **ptr, *iio_dev;

	ptr = FUNC1(devm_iio_device_release, sizeof(*ptr),
			   GFP_KERNEL);
	if (!ptr)
		return NULL;

	iio_dev = FUNC3(sizeof_priv);
	if (iio_dev) {
		*ptr = iio_dev;
		FUNC0(dev, ptr);
	} else {
		FUNC2(ptr);
	}

	return iio_dev;
}