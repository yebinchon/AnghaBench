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
struct TYPE_4__ {int shareable; int /*<<< orphan*/  handle; int /*<<< orphan*/ * tfile; } ;
struct vmw_resource {int dummy; } ;
struct vmw_user_context {TYPE_2__ base; struct vmw_resource res; } ;
struct vmw_private {int /*<<< orphan*/  reservation_sem; scalar_t__ has_mob; int /*<<< orphan*/  has_dx; } ;
struct ttm_operation_ctx {int interruptible; int no_wait_gpu; } ;
struct ttm_object_file {int dummy; } ;
struct drm_vmw_context_arg {int /*<<< orphan*/  cid; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {struct ttm_object_file* tfile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ TTM_OBJ_EXTRA_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  VMW_IDA_ACC_SIZE ; 
 int /*<<< orphan*/  VMW_RES_CONTEXT ; 
 struct vmw_user_context* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ttm_object_file*,TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,struct ttm_operation_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (struct vmw_private*,struct vmw_resource*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC12 (struct drm_file*) ; 
 int /*<<< orphan*/  FUNC13 (struct vmw_private*) ; 
 struct vmw_private* FUNC14 (struct drm_device*) ; 
 struct vmw_resource* FUNC15 (struct vmw_resource*) ; 
 int /*<<< orphan*/  FUNC16 (struct vmw_resource**) ; 
 int /*<<< orphan*/  vmw_user_context_base_release ; 
 int /*<<< orphan*/  vmw_user_context_free ; 
 scalar_t__ vmw_user_context_size ; 

__attribute__((used)) static int FUNC17(struct drm_device *dev, void *data,
			      struct drm_file *file_priv, bool dx)
{
	struct vmw_private *dev_priv = FUNC14(dev);
	struct vmw_user_context *ctx;
	struct vmw_resource *res;
	struct vmw_resource *tmp;
	struct drm_vmw_context_arg *arg = (struct drm_vmw_context_arg *)data;
	struct ttm_object_file *tfile = FUNC12(file_priv)->tfile;
	struct ttm_operation_ctx ttm_opt_ctx = {
		.interruptible = true,
		.no_wait_gpu = false
	};
	int ret;

	if (!dev_priv->has_dx && dx) {
		FUNC1("DX contexts not supported by device.\n");
		return -EINVAL;
	}

	if (FUNC9(vmw_user_context_size == 0))
		vmw_user_context_size = FUNC8(sizeof(*ctx)) +
		  ((dev_priv->has_mob) ? FUNC10() : 0) +
		  + VMW_IDA_ACC_SIZE + TTM_OBJ_EXTRA_SIZE;

	ret = FUNC6(&dev_priv->reservation_sem, true);
	if (FUNC9(ret != 0))
		return ret;

	ret = FUNC4(FUNC13(dev_priv),
				   vmw_user_context_size,
				   &ttm_opt_ctx);
	if (FUNC9(ret != 0)) {
		if (ret != -ERESTARTSYS)
			FUNC0("Out of graphics memory for context"
				  " creation.\n");
		goto out_unlock;
	}

	ctx = FUNC2(sizeof(*ctx), GFP_KERNEL);
	if (FUNC9(!ctx)) {
		FUNC5(FUNC13(dev_priv),
				    vmw_user_context_size);
		ret = -ENOMEM;
		goto out_unlock;
	}

	res = &ctx->res;
	ctx->base.shareable = false;
	ctx->base.tfile = NULL;

	/*
	 * From here on, the destructor takes over resource freeing.
	 */

	ret = FUNC11(dev_priv, res, vmw_user_context_free, dx);
	if (FUNC9(ret != 0))
		goto out_unlock;

	tmp = FUNC15(&ctx->res);
	ret = FUNC3(tfile, &ctx->base, false, VMW_RES_CONTEXT,
				   &vmw_user_context_base_release, NULL);

	if (FUNC9(ret != 0)) {
		FUNC16(&tmp);
		goto out_err;
	}

	arg->cid = ctx->base.handle;
out_err:
	FUNC16(&res);
out_unlock:
	FUNC7(&dev_priv->reservation_sem);
	return ret;
}