#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct i915_gem_context {int /*<<< orphan*/  pid; int /*<<< orphan*/  name; TYPE_1__* vm; struct drm_i915_file_private* file_priv; } ;
struct drm_i915_file_private {int /*<<< orphan*/  context_idr_lock; int /*<<< orphan*/  context_idr; } ;
struct TYPE_5__ {int /*<<< orphan*/  comm; } ;
struct TYPE_4__ {struct drm_i915_file_private* file; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct i915_gem_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct i915_gem_context *ctx,
				struct drm_i915_file_private *fpriv)
{
	int ret;

	ctx->file_priv = fpriv;
	if (ctx->vm)
		ctx->vm->file = fpriv;

	ctx->pid = FUNC1(current, PIDTYPE_PID);
	ctx->name = FUNC3(GFP_KERNEL, "%s[%d]",
			      current->comm, FUNC7(ctx->pid));
	if (!ctx->name) {
		ret = -ENOMEM;
		goto err_pid;
	}

	/* And finally expose ourselves to userspace via the idr */
	FUNC5(&fpriv->context_idr_lock);
	ret = FUNC2(&fpriv->context_idr, ctx, 0, 0, GFP_KERNEL);
	FUNC6(&fpriv->context_idr_lock);
	if (ret >= 0)
		goto out;

	FUNC4(FUNC0(&ctx->name));
err_pid:
	FUNC8(FUNC0(&ctx->pid));
out:
	return ret;
}