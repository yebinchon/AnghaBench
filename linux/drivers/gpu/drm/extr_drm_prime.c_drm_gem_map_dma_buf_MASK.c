#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sg_table {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct drm_gem_object {TYPE_2__* dev; TYPE_4__* funcs; } ;
struct dma_buf_attachment {int /*<<< orphan*/  dev; TYPE_3__* dmabuf; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_8__ {struct sg_table* (* get_sg_table ) (struct drm_gem_object*) ;} ;
struct TYPE_7__ {struct drm_gem_object* priv; } ;
struct TYPE_6__ {TYPE_1__* driver; } ;
struct TYPE_5__ {struct sg_table* (* gem_prime_get_sg_table ) (struct drm_gem_object*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ATTR_SKIP_CPU_SYNC ; 
 int DMA_NONE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sg_table* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sg_table*) ; 
 int /*<<< orphan*/  FUNC4 (struct sg_table*) ; 
 struct sg_table* FUNC5 (struct drm_gem_object*) ; 
 struct sg_table* FUNC6 (struct drm_gem_object*) ; 

struct sg_table *FUNC7(struct dma_buf_attachment *attach,
				     enum dma_data_direction dir)
{
	struct drm_gem_object *obj = attach->dmabuf->priv;
	struct sg_table *sgt;

	if (FUNC1(dir == DMA_NONE))
		return FUNC0(-EINVAL);

	if (obj->funcs)
		sgt = obj->funcs->get_sg_table(obj);
	else
		sgt = obj->dev->driver->gem_prime_get_sg_table(obj);

	if (!FUNC2(attach->dev, sgt->sgl, sgt->nents, dir,
			      DMA_ATTR_SKIP_CPU_SYNC)) {
		FUNC4(sgt);
		FUNC3(sgt);
		sgt = FUNC0(-ENOMEM);
	}

	return sgt;
}