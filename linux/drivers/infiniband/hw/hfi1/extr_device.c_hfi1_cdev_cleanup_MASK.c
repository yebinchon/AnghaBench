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
struct cdev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 

void FUNC2(struct cdev *cdev, struct device **devp)
{
	struct device *device = *devp;

	if (device) {
		FUNC1(device);
		*devp = NULL;

		FUNC0(cdev);
	}
}