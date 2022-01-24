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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct sg_table {int dummy; } ;
struct nouveau_drm {int /*<<< orphan*/  client; } ;
struct drm_gem_object {int dummy; } ;
struct TYPE_4__ {struct drm_gem_object base; } ;
struct nouveau_bo {TYPE_2__ bo; int /*<<< orphan*/  valid_domains; } ;
struct drm_device {int dummy; } ;
struct dma_resv {int dummy; } ;
struct dma_buf_attachment {TYPE_1__* dmabuf; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; struct dma_resv* resv; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct drm_gem_object* FUNC0 (struct nouveau_bo*) ; 
 struct drm_gem_object* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct nouveau_bo*) ; 
 int /*<<< orphan*/  NOUVEAU_GEM_DOMAIN_GART ; 
 int /*<<< orphan*/  TTM_PL_FLAG_TT ; 
 int /*<<< orphan*/  FUNC3 (struct dma_resv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_resv*) ; 
 int FUNC5 (struct drm_device*,struct drm_gem_object*,int /*<<< orphan*/ ) ; 
 struct nouveau_bo* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nouveau_bo*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct sg_table*,struct dma_resv*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct nouveau_bo**) ; 
 struct nouveau_drm* FUNC9 (struct drm_device*) ; 

struct drm_gem_object *FUNC10(struct drm_device *dev,
							 struct dma_buf_attachment *attach,
							 struct sg_table *sg)
{
	struct nouveau_drm *drm = FUNC9(dev);
	struct drm_gem_object *obj;
	struct nouveau_bo *nvbo;
	struct dma_resv *robj = attach->dmabuf->resv;
	u64 size = attach->dmabuf->size;
	u32 flags = 0;
	int align = 0;
	int ret;

	flags = TTM_PL_FLAG_TT;

	FUNC3(robj, NULL);
	nvbo = FUNC6(&drm->client, &size, &align, flags, 0, 0);
	if (FUNC2(nvbo)) {
		obj = FUNC0(nvbo);
		goto unlock;
	}

	nvbo->valid_domains = NOUVEAU_GEM_DOMAIN_GART;

	/* Initialize the embedded gem-object. We return a single gem-reference
	 * to the caller, instead of a normal nouveau_bo ttm reference. */
	ret = FUNC5(dev, &nvbo->bo.base, size);
	if (ret) {
		FUNC8(NULL, &nvbo);
		obj = FUNC1(-ENOMEM);
		goto unlock;
	}

	ret = FUNC7(nvbo, size, align, flags, sg, robj);
	if (ret) {
		FUNC8(NULL, &nvbo);
		obj = FUNC1(ret);
		goto unlock;
	}

	obj = &nvbo->bo.base;

unlock:
	FUNC4(robj);
	return obj;
}