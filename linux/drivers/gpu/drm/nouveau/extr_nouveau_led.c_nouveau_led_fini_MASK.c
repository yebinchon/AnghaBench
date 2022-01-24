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
struct nouveau_drm {TYPE_1__* led; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  led; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nouveau_drm* FUNC2 (struct drm_device*) ; 

void
FUNC3(struct drm_device *dev)
{
	struct nouveau_drm *drm = FUNC2(dev);

	if (drm->led) {
		FUNC1(&drm->led->led);
		FUNC0(drm->led);
		drm->led = NULL;
	}
}