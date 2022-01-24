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
struct drm_agp_binding {int offset; int /*<<< orphan*/  handle; } ;
struct TYPE_2__ {scalar_t__ base; int /*<<< orphan*/  acquired; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 int EINVAL ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 struct drm_agp_mem* FUNC1 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

int FUNC3(struct drm_device *dev, struct drm_agp_binding *request)
{
	struct drm_agp_mem *entry;
	int retcode;
	int page;

	if (!dev->agp || !dev->agp->acquired)
		return -EINVAL;
	entry = FUNC1(dev, request->handle);
	if (!entry || entry->bound)
		return -EINVAL;
	page = (request->offset + PAGE_SIZE - 1) / PAGE_SIZE;
	retcode = FUNC2(entry->memory, page);
	if (retcode)
		return retcode;
	entry->bound = dev->agp->base + (page << PAGE_SHIFT);
	FUNC0("base = 0x%lx entry->bound = 0x%lx\n",
		  dev->agp->base, entry->bound);
	return 0;
}