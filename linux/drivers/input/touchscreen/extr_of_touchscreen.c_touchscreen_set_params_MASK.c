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
struct input_dev {struct input_absinfo* absinfo; int /*<<< orphan*/  dev; int /*<<< orphan*/  absbit; } ;
struct input_absinfo {int minimum; int maximum; int fuzz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct input_dev *dev,
				   unsigned long axis,
				   int min, int max, int fuzz)
{
	struct input_absinfo *absinfo;

	if (!FUNC1(axis, dev->absbit)) {
		FUNC0(&dev->dev,
			 "DT specifies parameters but the axis %lu is not set up\n",
			 axis);
		return;
	}

	absinfo = &dev->absinfo[axis];
	absinfo->minimum = min;
	absinfo->maximum = max;
	absinfo->fuzz = fuzz;
}