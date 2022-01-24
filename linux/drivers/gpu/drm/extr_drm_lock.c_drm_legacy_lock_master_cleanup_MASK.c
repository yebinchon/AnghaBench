#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lock_queue; int /*<<< orphan*/ * file_priv; int /*<<< orphan*/ * hw_lock; } ;
struct drm_master {TYPE_1__ lock; } ;
struct TYPE_4__ {int /*<<< orphan*/ * lock; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; TYPE_2__ sigdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_LEGACY ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct drm_device *dev, struct drm_master *master)
{
	if (!FUNC0(dev, DRIVER_LEGACY))
		return;

	/*
	 * Since the master is disappearing, so is the
	 * possibility to lock.
	 */	FUNC1(&dev->struct_mutex);
	if (master->lock.hw_lock) {
		if (dev->sigdata.lock == master->lock.hw_lock)
			dev->sigdata.lock = NULL;
		master->lock.hw_lock = NULL;
		master->lock.file_priv = NULL;
		FUNC3(&master->lock.lock_queue);
	}
	FUNC2(&dev->struct_mutex);
}