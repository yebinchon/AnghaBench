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
struct ad7606_state {int /*<<< orphan*/  num_scales; int /*<<< orphan*/  scale_avail; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct iio_dev* FUNC1 (struct device*) ; 
 struct ad7606_state* FUNC2 (struct iio_dev*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
					       struct device_attribute *attr,
					       char *buf)
{
	struct iio_dev *indio_dev = FUNC1(dev);
	struct ad7606_state *st = FUNC2(indio_dev);

	return FUNC0(buf, st->scale_avail, st->num_scales, true);
}