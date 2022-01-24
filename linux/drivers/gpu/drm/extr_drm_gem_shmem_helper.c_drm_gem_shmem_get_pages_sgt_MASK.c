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
struct sg_table {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct drm_gem_shmem_object {struct sg_table* sgt; int /*<<< orphan*/  base; } ;
struct drm_gem_object {TYPE_1__* dev; int /*<<< orphan*/  import_attach; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 struct sg_table* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct sg_table*) ; 
 int FUNC2 (struct sg_table*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct drm_gem_shmem_object*) ; 
 struct sg_table* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_gem_shmem_object*) ; 
 struct drm_gem_shmem_object* FUNC8 (struct drm_gem_object*) ; 

struct sg_table *FUNC9(struct drm_gem_object *obj)
{
	int ret;
	struct drm_gem_shmem_object *shmem = FUNC8(obj);
	struct sg_table *sgt;

	if (shmem->sgt)
		return shmem->sgt;

	FUNC3(obj->import_attach);

	ret = FUNC5(shmem);
	if (ret)
		return FUNC0(ret);

	sgt = FUNC6(&shmem->base);
	if (FUNC1(sgt)) {
		ret = FUNC2(sgt);
		goto err_put_pages;
	}
	/* Map the pages for use by the h/w. */
	FUNC4(obj->dev->dev, sgt->sgl, sgt->nents, DMA_BIDIRECTIONAL);

	shmem->sgt = sgt;

	return sgt;

err_put_pages:
	FUNC7(shmem);
	return FUNC0(ret);
}