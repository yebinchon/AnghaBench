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
struct page {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_gem_shmem_object {int pages_use_count; struct drm_gem_object base; int /*<<< orphan*/  pages; struct sg_table* sgt; } ;
struct drm_device {int dummy; } ;
struct dma_buf_attachment {TYPE_1__* dmabuf; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int ENOMEM ; 
 struct drm_gem_object* FUNC1 (struct drm_gem_shmem_object*) ; 
 struct drm_gem_object* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC3 (struct drm_gem_shmem_object*) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 size_t PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC5 (struct drm_gem_object*) ; 
 struct drm_gem_shmem_object* FUNC6 (struct drm_device*,size_t) ; 
 int FUNC7 (struct sg_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (size_t,int,int /*<<< orphan*/ ) ; 

struct drm_gem_object *
FUNC10(struct drm_device *dev,
				    struct dma_buf_attachment *attach,
				    struct sg_table *sgt)
{
	size_t size = FUNC4(attach->dmabuf->size);
	size_t npages = size >> PAGE_SHIFT;
	struct drm_gem_shmem_object *shmem;
	int ret;

	shmem = FUNC6(dev, size);
	if (FUNC3(shmem))
		return FUNC1(shmem);

	shmem->pages = FUNC9(npages, sizeof(struct page *), GFP_KERNEL);
	if (!shmem->pages) {
		ret = -ENOMEM;
		goto err_free_gem;
	}

	ret = FUNC7(sgt, shmem->pages, NULL, npages);
	if (ret < 0)
		goto err_free_array;

	shmem->sgt = sgt;
	shmem->pages_use_count = 1; /* Permanently pinned from our point of view */

	FUNC0("size = %zu\n", size);

	return &shmem->base;

err_free_array:
	FUNC8(shmem->pages);
err_free_gem:
	FUNC5(&shmem->base);

	return FUNC2(ret);
}