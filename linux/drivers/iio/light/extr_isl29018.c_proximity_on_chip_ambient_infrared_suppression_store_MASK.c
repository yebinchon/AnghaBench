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
struct isl29018_chip {int prox_scheme; int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 struct iio_dev* FUNC0 (struct device*) ; 
 struct isl29018_chip* FUNC1 (struct iio_dev*) ; 
 scalar_t__ FUNC2 (char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5
			(struct device *dev, struct device_attribute *attr,
			 const char *buf, size_t count)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct isl29018_chip *chip = FUNC1(indio_dev);
	int val;

	if (FUNC2(buf, 10, &val))
		return -EINVAL;
	if (!(val == 0 || val == 1))
		return -EINVAL;

	/*
	 * Get the "proximity scheme" i.e. if the chip does on chip
	 * infrared suppression (1 means perform on chip suppression)
	 */
	FUNC3(&chip->lock);
	chip->prox_scheme = val;
	FUNC4(&chip->lock);

	return count;
}