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
struct qxl_surface {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  objects; } ;
struct qxl_device {TYPE_2__ gem; } ;
struct drm_gem_object {int dummy; } ;
struct TYPE_3__ {struct drm_gem_object base; } ;
struct qxl_bo {int /*<<< orphan*/  list; TYPE_1__ tbo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 
 int ERESTARTSYS ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct qxl_device*,int,int,int,int,struct qxl_surface*,struct qxl_bo**) ; 

int FUNC5(struct qxl_device *qdev, int size,
			  int alignment, int initial_domain,
			  bool discardable, bool kernel,
			  struct qxl_surface *surf,
			  struct drm_gem_object **obj)
{
	struct qxl_bo *qbo;
	int r;

	*obj = NULL;
	/* At least align on page size */
	if (alignment < PAGE_SIZE)
		alignment = PAGE_SIZE;
	r = FUNC4(qdev, size, kernel, false, initial_domain, surf, &qbo);
	if (r) {
		if (r != -ERESTARTSYS)
			FUNC0(
			"Failed to allocate GEM object (%d, %d, %u, %d)\n",
				  size, initial_domain, alignment, r);
		return r;
	}
	*obj = &qbo->tbo.base;

	FUNC2(&qdev->gem.mutex);
	FUNC1(&qbo->list, &qdev->gem.objects);
	FUNC3(&qdev->gem.mutex);

	return 0;
}