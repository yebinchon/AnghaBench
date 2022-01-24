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
struct TYPE_2__ {int /*<<< orphan*/  dealloc_driver; } ;
struct ib_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  unregistration_work; TYPE_1__ ops; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_unbound_wq ; 

void FUNC5(struct ib_device *ib_dev)
{
	FUNC0(!FUNC4(&ib_dev->refcount));
	FUNC0(!ib_dev->ops.dealloc_driver);
	FUNC1(&ib_dev->dev);
	if (!FUNC3(system_unbound_wq, &ib_dev->unregistration_work))
		FUNC2(&ib_dev->dev);
}