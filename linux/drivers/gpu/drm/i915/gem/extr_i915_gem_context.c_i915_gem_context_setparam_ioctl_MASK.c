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
struct drm_i915_gem_context_param {int /*<<< orphan*/  ctx_id; } ;
struct drm_i915_file_private {int dummy; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (struct drm_i915_file_private*,struct i915_gem_context*,struct drm_i915_gem_context_param*) ; 
 struct i915_gem_context* FUNC1 (struct drm_i915_file_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_gem_context*) ; 

int FUNC3(struct drm_device *dev, void *data,
				    struct drm_file *file)
{
	struct drm_i915_file_private *file_priv = file->driver_priv;
	struct drm_i915_gem_context_param *args = data;
	struct i915_gem_context *ctx;
	int ret;

	ctx = FUNC1(file_priv, args->ctx_id);
	if (!ctx)
		return -ENOENT;

	ret = FUNC0(file_priv, ctx, args);

	FUNC2(ctx);
	return ret;
}