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
struct input_mt {int flags; int /*<<< orphan*/  frame; } ;
struct input_dev {struct input_mt* mt; } ;

/* Variables and functions */
 int INPUT_MT_DROP_UNUSED ; 
 int INPUT_MT_POINTER ; 
 int INPUT_MT_SEMI_MT ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,struct input_mt*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int) ; 

void FUNC2(struct input_dev *dev)
{
	struct input_mt *mt = dev->mt;
	bool use_count = false;

	if (!mt)
		return;

	if (mt->flags & INPUT_MT_DROP_UNUSED)
		FUNC0(dev, mt);

	if ((mt->flags & INPUT_MT_POINTER) && !(mt->flags & INPUT_MT_SEMI_MT))
		use_count = true;

	FUNC1(dev, use_count);

	mt->frame++;
}