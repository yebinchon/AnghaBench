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
struct input_dev {struct ff_device* ff; int /*<<< orphan*/  evbit; } ;
struct ff_device {struct ff_device* effects; struct ff_device* private; int /*<<< orphan*/  (* destroy ) (struct ff_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EV_FF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ff_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ff_device*) ; 

void FUNC3(struct input_dev *dev)
{
	struct ff_device *ff = dev->ff;

	FUNC0(EV_FF, dev->evbit);
	if (ff) {
		if (ff->destroy)
			ff->destroy(ff);
		FUNC1(ff->private);
		FUNC1(ff->effects);
		FUNC1(ff);
		dev->ff = NULL;
	}
}