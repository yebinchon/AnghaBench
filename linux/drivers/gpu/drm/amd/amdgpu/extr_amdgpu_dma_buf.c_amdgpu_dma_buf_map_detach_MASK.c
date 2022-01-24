#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_gem_object {int dummy; } ;
struct dma_buf_attachment {TYPE_1__* dev; } ;
struct dma_buf {struct drm_gem_object* priv; } ;
struct amdgpu_device {TYPE_2__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  bdev; } ;
struct amdgpu_bo {scalar_t__ prime_shared_count; TYPE_3__ tbo; } ;
struct TYPE_5__ {scalar_t__ driver; } ;
struct TYPE_4__ {scalar_t__ driver; } ;

/* Variables and functions */
 int FUNC0 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_bo*) ; 
 struct amdgpu_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_buf*,struct dma_buf_attachment*) ; 
 struct amdgpu_bo* FUNC5 (struct drm_gem_object*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct dma_buf *dma_buf,
				      struct dma_buf_attachment *attach)
{
	struct drm_gem_object *obj = dma_buf->priv;
	struct amdgpu_bo *bo = FUNC5(obj);
	struct amdgpu_device *adev = FUNC3(bo->tbo.bdev);
	int ret = 0;

	ret = FUNC0(bo, true);
	if (FUNC6(ret != 0))
		goto error;

	FUNC1(bo);
	if (attach->dev->driver != adev->dev->driver && bo->prime_shared_count)
		bo->prime_shared_count--;
	FUNC2(bo);

error:
	FUNC4(dma_buf, attach);
}