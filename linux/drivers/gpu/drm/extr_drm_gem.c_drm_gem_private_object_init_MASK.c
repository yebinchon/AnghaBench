#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct drm_gem_object {size_t size; int /*<<< orphan*/  vma_node; int /*<<< orphan*/  _resv; int /*<<< orphan*/ * resv; scalar_t__ handle_count; int /*<<< orphan*/  refcount; int /*<<< orphan*/ * filp; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct drm_device *dev,
				 struct drm_gem_object *obj, size_t size)
{
	FUNC0((size & (PAGE_SIZE - 1)) != 0);

	obj->dev = dev;
	obj->filp = NULL;

	FUNC3(&obj->refcount);
	obj->handle_count = 0;
	obj->size = size;
	FUNC1(&obj->_resv);
	if (!obj->resv)
		obj->resv = &obj->_resv;

	FUNC2(&obj->vma_node);
}