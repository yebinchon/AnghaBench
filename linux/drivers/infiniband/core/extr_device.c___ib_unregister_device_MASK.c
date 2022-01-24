#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kref; } ;
struct TYPE_6__ {TYPE_1__ kobj; } ;
struct TYPE_5__ {scalar_t__ dealloc_driver; } ;
struct ib_device {int /*<<< orphan*/  unregistration_lock; TYPE_3__ dev; TYPE_2__ ops; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_device*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct ib_device *ib_dev)
{
	/*
	 * We have a registration lock so that all the calls to unregister are
	 * fully fenced, once any unregister returns the device is truely
	 * unregistered even if multiple callers are unregistering it at the
	 * same time. This also interacts with the registration flow and
	 * provides sane semantics if register and unregister are racing.
	 */
	FUNC9(&ib_dev->unregistration_lock);
	if (!FUNC11(&ib_dev->refcount))
		goto out;

	FUNC2(ib_dev);

	/* Expedite removing unregistered pointers from the hash table */
	FUNC3(ib_dev);

	FUNC7(ib_dev);
	FUNC1(&ib_dev->dev);
	FUNC6(ib_dev);
	FUNC4(ib_dev);

	/*
	 * Drivers using the new flow may not call ib_dealloc_device except
	 * in error unwind prior to registration success.
	 */
	if (ib_dev->ops.dealloc_driver) {
		FUNC0(FUNC8(&ib_dev->dev.kobj.kref) <= 1);
		FUNC5(ib_dev);
	}
out:
	FUNC10(&ib_dev->unregistration_lock);
}