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
struct drm_file {TYPE_3__* master; } ;
struct drm_device {int last_context; int /*<<< orphan*/  context_flag; } ;
struct TYPE_5__ {TYPE_1__* hw_lock; } ;
struct TYPE_6__ {TYPE_2__ lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct drm_device *dev,
				       struct drm_file *file_priv, int new)
{
	dev->last_context = new;	/* PRE/POST: This is the _only_ writer. */

	if (!FUNC1(file_priv->master->lock.hw_lock->lock)) {
		FUNC0("Lock isn't held after context switch\n");
	}

	/* If a context switch is ever initiated
	   when the kernel holds the lock, release
	   that lock here. */
	FUNC2(0, &dev->context_flag);

	return 0;
}