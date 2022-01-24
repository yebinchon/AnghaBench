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
struct vmw_resource {struct vmw_private* dev_priv; } ;
struct vmw_private {int /*<<< orphan*/  binding_mutex; } ;
struct vmw_fence_obj {int dummy; } ;
struct vmw_cotable {int /*<<< orphan*/  ctx; int /*<<< orphan*/  scrubbed; } ;
struct ttm_validate_buffer {struct ttm_buffer_object* bo; } ;
struct TYPE_4__ {int /*<<< orphan*/  resv; } ;
struct TYPE_3__ {scalar_t__ mem_type; } ;
struct ttm_buffer_object {TYPE_2__ base; TYPE_1__ mem; } ;

/* Variables and functions */
 scalar_t__ VMW_PL_MOB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ttm_buffer_object*,struct vmw_fence_obj*) ; 
 struct vmw_cotable* FUNC6 (struct vmw_resource*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct vmw_private*,struct vmw_fence_obj**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct vmw_fence_obj**) ; 
 int /*<<< orphan*/  FUNC10 (struct vmw_resource*) ; 

__attribute__((used)) static int FUNC11(struct vmw_resource *res,
			      bool readback,
			      struct ttm_validate_buffer *val_buf)
{
	struct vmw_cotable *vcotbl = FUNC6(res);
	struct vmw_private *dev_priv = res->dev_priv;
	struct ttm_buffer_object *bo = val_buf->bo;
	struct vmw_fence_obj *fence;

	if (!FUNC10(res))
		return 0;

	FUNC0(bo->mem.mem_type != VMW_PL_MOB);
	FUNC1(bo->base.resv);

	FUNC3(&dev_priv->binding_mutex);
	if (!vcotbl->scrubbed)
		FUNC7(vcotbl->ctx, readback);
	FUNC4(&dev_priv->binding_mutex);
	(void) FUNC8(NULL, dev_priv, &fence, NULL);
	FUNC5(bo, fence);
	if (FUNC2(fence != NULL))
		FUNC9(&fence);

	return 0;
}