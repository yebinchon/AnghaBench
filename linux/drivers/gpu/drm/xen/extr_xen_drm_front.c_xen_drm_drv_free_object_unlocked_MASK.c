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
struct xen_drm_front_drm_info {TYPE_1__* front_info; } ;
struct drm_gem_object {TYPE_2__* dev; } ;
struct TYPE_4__ {struct xen_drm_front_drm_info* dev_private; } ;
struct TYPE_3__ {int /*<<< orphan*/  dbuf_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_gem_object*) ; 

__attribute__((used)) static void FUNC6(struct drm_gem_object *obj)
{
	struct xen_drm_front_drm_info *drm_info = obj->dev->dev_private;
	int idx;

	if (FUNC1(obj->dev, &idx)) {
		FUNC3(drm_info->front_info,
					   FUNC4(obj));
		FUNC2(idx);
	} else {
		FUNC0(&drm_info->front_info->dbuf_list,
			  FUNC4(obj));
	}

	FUNC5(obj);
}