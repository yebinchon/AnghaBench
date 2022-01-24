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
struct iio_dev {int /*<<< orphan*/  buffer; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct iio_dev* FUNC0 (struct device*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
						struct device_attribute *attr,
						char *buf)
{
	struct iio_dev *indio_dev = FUNC0(dev);
	size_t bytes;

	bytes = FUNC1(indio_dev->buffer);

	return FUNC2(buf, "%zu\n", bytes);
}