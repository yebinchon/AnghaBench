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
struct drm_device {TYPE_1__* agp; } ;
struct drm_agp_mem {scalar_t__ bound; int /*<<< orphan*/  memory; } ;
struct drm_agp_binding {int /*<<< orphan*/  handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  acquired; } ;

/* Variables and functions */
 int EINVAL ; 
 struct drm_agp_mem* FUNC0 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct drm_device *dev, struct drm_agp_binding *request)
{
	struct drm_agp_mem *entry;
	int ret;

	if (!dev->agp || !dev->agp->acquired)
		return -EINVAL;
	entry = FUNC0(dev, request->handle);
	if (!entry || !entry->bound)
		return -EINVAL;
	ret = FUNC1(entry->memory);
	if (ret == 0)
		entry->bound = 0;
	return ret;
}