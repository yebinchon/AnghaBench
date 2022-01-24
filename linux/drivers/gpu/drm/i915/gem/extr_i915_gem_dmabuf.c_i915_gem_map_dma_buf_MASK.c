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
struct sg_table {int /*<<< orphan*/  nents; struct scatterlist* sgl; } ;
struct scatterlist {int /*<<< orphan*/  length; } ;
struct TYPE_4__ {TYPE_1__* pages; } ;
struct drm_i915_gem_object {TYPE_2__ mm; } ;
struct dma_buf_attachment {int /*<<< orphan*/  dev; int /*<<< orphan*/  dmabuf; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_3__ {int nents; struct scatterlist* sgl; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct sg_table* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct drm_i915_gem_object* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct sg_table*) ; 
 struct sg_table* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sg_table*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sg_table*) ; 
 struct scatterlist* FUNC9 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC10 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC11 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sg_table *FUNC12(struct dma_buf_attachment *attachment,
					     enum dma_data_direction dir)
{
	struct drm_i915_gem_object *obj = FUNC1(attachment->dmabuf);
	struct sg_table *st;
	struct scatterlist *src, *dst;
	int ret, i;

	ret = FUNC3(obj);
	if (ret)
		goto err;

	/* Copy sg so that we make an independent mapping */
	st = FUNC6(sizeof(struct sg_table), GFP_KERNEL);
	if (st == NULL) {
		ret = -ENOMEM;
		goto err_unpin_pages;
	}

	ret = FUNC7(st, obj->mm.pages->nents, GFP_KERNEL);
	if (ret)
		goto err_free;

	src = obj->mm.pages->sgl;
	dst = st->sgl;
	for (i = 0; i < obj->mm.pages->nents; i++) {
		FUNC11(dst, FUNC10(src), src->length, 0);
		dst = FUNC9(dst);
		src = FUNC9(src);
	}

	if (!FUNC2(attachment->dev, st->sgl, st->nents, dir)) {
		ret = -ENOMEM;
		goto err_free_sg;
	}

	return st;

err_free_sg:
	FUNC8(st);
err_free:
	FUNC5(st);
err_unpin_pages:
	FUNC4(obj);
err:
	return FUNC0(ret);
}