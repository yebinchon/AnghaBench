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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7793_state {int** scale_avail; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int**) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 struct ad7793_state* FUNC2 (struct iio_dev*) ; 
 scalar_t__ FUNC3 (char*,char*,...) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			struct device_attribute *attr, char *buf)
{
	struct iio_dev *indio_dev = FUNC1(dev);
	struct ad7793_state *st = FUNC2(indio_dev);
	int i, len = 0;

	for (i = 0; i < FUNC0(st->scale_avail); i++)
		len += FUNC3(buf + len, "%d.%09u ", st->scale_avail[i][0],
			       st->scale_avail[i][1]);

	len += FUNC3(buf + len, "\n");

	return len;
}