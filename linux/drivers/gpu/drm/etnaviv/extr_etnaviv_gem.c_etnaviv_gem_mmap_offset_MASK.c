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
typedef  int /*<<< orphan*/  u64 ;
struct drm_gem_object {int /*<<< orphan*/  vma_node; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct drm_gem_object *obj, u64 *offset)
{
	int ret;

	/* Make it mmapable */
	ret = FUNC1(obj);
	if (ret)
		FUNC0(obj->dev->dev, "could not allocate mmap offset\n");
	else
		*offset = FUNC2(&obj->vma_node);

	return ret;
}