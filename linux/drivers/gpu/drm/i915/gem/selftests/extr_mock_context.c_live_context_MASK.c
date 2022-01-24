#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct i915_gem_context {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct drm_file {int /*<<< orphan*/  driver_priv; } ;

/* Variables and functions */
 struct i915_gem_context* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct i915_gem_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_gem_context*) ; 
 int FUNC3 (struct i915_gem_context*,int /*<<< orphan*/ ) ; 
 struct i915_gem_context* FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct i915_gem_context *
FUNC6(struct drm_i915_private *i915, struct drm_file *file)
{
	struct i915_gem_context *ctx;
	int err;

	FUNC5(&i915->drm.struct_mutex);

	ctx = FUNC4(i915, 0);
	if (FUNC1(ctx))
		return ctx;

	err = FUNC3(ctx, file->driver_priv);
	if (err < 0)
		goto err_ctx;

	return ctx;

err_ctx:
	FUNC2(ctx);
	return FUNC0(err);
}