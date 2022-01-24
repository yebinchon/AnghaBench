#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct isl29018_chip {size_t int_time; int /*<<< orphan*/  lock; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_3__ {int scale; int uscale; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 struct isl29018_chip* FUNC2 (struct iio_dev*) ; 
 TYPE_1__** isl29018_scales ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,char*,int,int) ; 

__attribute__((used)) static ssize_t FUNC6
			(struct device *dev, struct device_attribute *attr,
			 char *buf)
{
	struct iio_dev *indio_dev = FUNC1(dev);
	struct isl29018_chip *chip = FUNC2(indio_dev);
	unsigned int i;
	int len = 0;

	FUNC3(&chip->lock);
	for (i = 0; i < FUNC0(isl29018_scales[chip->int_time]); ++i)
		len += FUNC5(buf + len, "%d.%06d ",
			       isl29018_scales[chip->int_time][i].scale,
			       isl29018_scales[chip->int_time][i].uscale);
	FUNC4(&chip->lock);

	buf[len - 1] = '\n';

	return len;
}