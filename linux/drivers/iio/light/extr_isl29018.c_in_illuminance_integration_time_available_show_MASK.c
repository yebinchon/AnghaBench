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
struct isl29018_chip {size_t type; } ;
struct iio_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned int FUNC0 (int*) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 struct isl29018_chip* FUNC2 (struct iio_dev*) ; 
 int** isl29018_int_utimes ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC4
			(struct device *dev, struct device_attribute *attr,
			 char *buf)
{
	struct iio_dev *indio_dev = FUNC1(dev);
	struct isl29018_chip *chip = FUNC2(indio_dev);
	unsigned int i;
	int len = 0;

	for (i = 0; i < FUNC0(isl29018_int_utimes[chip->type]); ++i)
		len += FUNC3(buf + len, "0.%06d ",
			       isl29018_int_utimes[chip->type][i]);

	buf[len - 1] = '\n';

	return len;
}