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
struct input_dev {int /*<<< orphan*/  absbit; int /*<<< orphan*/  evbit; struct input_absinfo* absinfo; } ;
struct input_absinfo {int minimum; int maximum; int fuzz; int flat; } ;

/* Variables and functions */
 unsigned int EV_ABS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*) ; 

void FUNC2(struct input_dev *dev, unsigned int axis,
			  int min, int max, int fuzz, int flat)
{
	struct input_absinfo *absinfo;

	FUNC1(dev);
	if (!dev->absinfo)
		return;

	absinfo = &dev->absinfo[axis];
	absinfo->minimum = min;
	absinfo->maximum = max;
	absinfo->fuzz = fuzz;
	absinfo->flat = flat;

	FUNC0(EV_ABS, dev->evbit);
	FUNC0(axis, dev->absbit);
}