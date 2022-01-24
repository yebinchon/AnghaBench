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
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct device*) ; 

__attribute__((used)) static int FUNC1(struct device *dev, void *data)
{
	int ret = FUNC0(dev);

	/*
	 * We ignore -ENODEV errors for now, as they just mean that the
	 * device is not translated by an IOMMU. We still care about
	 * other errors and fail to initialize when they happen.
	 */
	if (ret == -ENODEV)
		ret = 0;

	return ret;
}