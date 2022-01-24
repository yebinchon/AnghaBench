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
struct dio_dev {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_id ; 
 int /*<<< orphan*/  dev_attr_ipl ; 
 int /*<<< orphan*/  dev_attr_name ; 
 int /*<<< orphan*/  dev_attr_resource ; 
 int /*<<< orphan*/  dev_attr_secid ; 
 int FUNC0 (struct device*,int /*<<< orphan*/ *) ; 

int FUNC1(struct dio_dev *d)
{
	struct device *dev = &d->dev;
	int error;

	/* current configuration's attributes */
	if ((error = FUNC0(dev, &dev_attr_id)) ||
	    (error = FUNC0(dev, &dev_attr_ipl)) ||
	    (error = FUNC0(dev, &dev_attr_secid)) ||
	    (error = FUNC0(dev, &dev_attr_name)) ||
	    (error = FUNC0(dev, &dev_attr_resource)))
		return error;

	return 0;
}