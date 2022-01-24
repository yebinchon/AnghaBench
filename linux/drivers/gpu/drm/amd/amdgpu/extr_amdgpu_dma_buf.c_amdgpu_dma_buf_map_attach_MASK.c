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
struct drm_gem_object {int dummy; } ;
struct dma_buf_attachment {TYPE_3__* dev; } ;
struct dma_buf {struct drm_gem_object* priv; } ;
struct amdgpu_device {TYPE_4__* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  resv; } ;
struct TYPE_6__ {TYPE_1__ base; int /*<<< orphan*/  bdev; } ;
struct amdgpu_bo {int /*<<< orphan*/  prime_shared_count; TYPE_2__ tbo; } ;
struct TYPE_8__ {scalar_t__ driver; } ;
struct TYPE_7__ {scalar_t__ driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_GTT ; 
 long FUNC0 (int /*<<< orphan*/ ) ; 
 long FUNC1 (struct amdgpu_bo*,int /*<<< orphan*/ ) ; 
 long FUNC2 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_bo*) ; 
 struct amdgpu_device* FUNC4 (int /*<<< orphan*/ ) ; 
 long FUNC5 (struct dma_buf*,struct dma_buf_attachment*) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_buf*,struct dma_buf_attachment*) ; 
 struct amdgpu_bo* FUNC7 (struct drm_gem_object*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct dma_buf *dma_buf,
				     struct dma_buf_attachment *attach)
{
	struct drm_gem_object *obj = dma_buf->priv;
	struct amdgpu_bo *bo = FUNC7(obj);
	struct amdgpu_device *adev = FUNC4(bo->tbo.bdev);
	long r;

	r = FUNC5(dma_buf, attach);
	if (r)
		return r;

	r = FUNC2(bo, false);
	if (FUNC8(r != 0))
		goto error_detach;


	if (attach->dev->driver != adev->dev->driver) {
		/*
		 * We only create shared fences for internal use, but importers
		 * of the dmabuf rely on exclusive fences for implicitly
		 * tracking write hazards. As any of the current fences may
		 * correspond to a write, we need to convert all existing
		 * fences on the reservation object into a single exclusive
		 * fence.
		 */
		r = FUNC0(bo->tbo.base.resv);
		if (r)
			goto error_unreserve;
	}

	/* pin buffer into GTT */
	r = FUNC1(bo, AMDGPU_GEM_DOMAIN_GTT);
	if (r)
		goto error_unreserve;

	if (attach->dev->driver != adev->dev->driver)
		bo->prime_shared_count++;

error_unreserve:
	FUNC3(bo);

error_detach:
	if (r)
		FUNC6(dma_buf, attach);
	return r;
}