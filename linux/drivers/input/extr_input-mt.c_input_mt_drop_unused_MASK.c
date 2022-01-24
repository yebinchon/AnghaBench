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
struct input_mt {int /*<<< orphan*/  frame; } ;
struct input_dev {struct input_mt* mt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct input_dev*,struct input_mt*) ; 

void FUNC1(struct input_dev *dev)
{
	struct input_mt *mt = dev->mt;

	if (mt) {
		FUNC0(dev, mt);
		mt->frame++;
	}
}