#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct i3c_device {int /*<<< orphan*/  bus; TYPE_1__* desc; } ;
struct TYPE_2__ {int /*<<< orphan*/  ibi_lock; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct i3c_device *dev)
{
	int ret = -ENOENT;

	FUNC0(dev->bus);
	if (dev->desc) {
		FUNC3(&dev->desc->ibi_lock);
		ret = FUNC2(dev->desc);
		FUNC4(&dev->desc->ibi_lock);
	}
	FUNC1(dev->bus);

	return ret;
}