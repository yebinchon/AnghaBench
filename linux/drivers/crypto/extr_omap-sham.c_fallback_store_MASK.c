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
struct omap_sham_dev {long fallback_sz; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct omap_sham_dev* FUNC1 (struct device*) ; 
 size_t FUNC2 (char const*,int /*<<< orphan*/ ,long*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev, struct device_attribute *attr,
			      const char *buf, size_t size)
{
	struct omap_sham_dev *dd = FUNC1(dev);
	ssize_t status;
	long value;

	status = FUNC2(buf, 0, &value);
	if (status)
		return status;

	/* HW accelerator only works with buffers > 9 */
	if (value < 9) {
		FUNC0(dev, "minimum fallback size 9\n");
		return -EINVAL;
	}

	dd->fallback_sz = value;

	return size;
}