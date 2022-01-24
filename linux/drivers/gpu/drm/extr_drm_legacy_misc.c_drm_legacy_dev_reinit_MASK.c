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
struct TYPE_2__ {int /*<<< orphan*/ * lock; } ;
struct drm_device {scalar_t__ if_version; scalar_t__ last_context; scalar_t__ context_flag; TYPE_1__ sigdata; int /*<<< orphan*/  struct_mutex; scalar_t__ irq_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct drm_device *dev)
{
	if (dev->irq_enabled)
		FUNC1(dev);

	FUNC6(&dev->struct_mutex);

	FUNC2(dev);

	FUNC4(dev);
	FUNC5(dev);
	FUNC3(dev);

	FUNC7(&dev->struct_mutex);

	dev->sigdata.lock = NULL;

	dev->context_flag = 0;
	dev->last_context = 0;
	dev->if_version = 0;

	FUNC0("lastclose completed\n");
}