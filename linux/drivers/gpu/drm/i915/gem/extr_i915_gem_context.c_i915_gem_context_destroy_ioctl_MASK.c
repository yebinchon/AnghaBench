#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct i915_gem_context {int dummy; } ;
struct drm_i915_gem_context_destroy {scalar_t__ pad; int /*<<< orphan*/  ctx_id; } ;
struct drm_i915_file_private {int /*<<< orphan*/  context_idr_lock; int /*<<< orphan*/  context_idr; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EINTR ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct i915_gem_context*) ; 
 struct i915_gem_context* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct drm_device *dev, void *data,
				   struct drm_file *file)
{
	struct drm_i915_gem_context_destroy *args = data;
	struct drm_i915_file_private *file_priv = file->driver_priv;
	struct i915_gem_context *ctx;

	if (args->pad != 0)
		return -EINVAL;

	if (!args->ctx_id)
		return -ENOENT;

	if (FUNC2(&file_priv->context_idr_lock))
		return -EINTR;

	ctx = FUNC1(&file_priv->context_idr, args->ctx_id);
	FUNC3(&file_priv->context_idr_lock);
	if (!ctx)
		return -ENOENT;

	FUNC0(ctx);
	return 0;
}