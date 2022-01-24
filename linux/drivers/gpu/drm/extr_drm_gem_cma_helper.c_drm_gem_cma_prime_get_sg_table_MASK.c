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
struct sg_table {int dummy; } ;
struct drm_gem_object {int /*<<< orphan*/  size; TYPE_1__* dev; } ;
struct drm_gem_cma_object {int /*<<< orphan*/  paddr; int /*<<< orphan*/  vaddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct sg_table* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sg_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sg_table*) ; 
 struct sg_table* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct drm_gem_cma_object* FUNC4 (struct drm_gem_object*) ; 

struct sg_table *FUNC5(struct drm_gem_object *obj)
{
	struct drm_gem_cma_object *cma_obj = FUNC4(obj);
	struct sg_table *sgt;
	int ret;

	sgt = FUNC3(sizeof(*sgt), GFP_KERNEL);
	if (!sgt)
		return FUNC0(-ENOMEM);

	ret = FUNC1(obj->dev->dev, sgt, cma_obj->vaddr,
			      cma_obj->paddr, obj->size);
	if (ret < 0)
		goto out;

	return sgt;

out:
	FUNC2(sgt);
	return FUNC0(ret);
}