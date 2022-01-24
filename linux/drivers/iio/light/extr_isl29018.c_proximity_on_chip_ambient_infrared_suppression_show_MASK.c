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
struct isl29018_chip {int prox_scheme; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct iio_dev* FUNC0 (struct device*) ; 
 struct isl29018_chip* FUNC1 (struct iio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3
			(struct device *dev, struct device_attribute *attr,
			 char *buf)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	struct isl29018_chip *chip = FUNC1(indio_dev);

	/*
	 * Return the "proximity scheme" i.e. if the chip does on chip
	 * infrared suppression (1 means perform on chip suppression)
	 */
	return FUNC2(buf, "%d\n", chip->prox_scheme);
}